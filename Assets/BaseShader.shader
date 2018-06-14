Shader "Custom/BaseShader" 
{
    Properties 
	{
        _MainTex ("Base (RGB)", 2D) = "white" {}
		_MainColor("Color", Color) = (1,1,1,1)
    }
    SubShader 
	{
        Pass 
		{
            CGPROGRAM
            #pragma vertex vert_img
            #pragma fragment frag

            #include "UnityCG.cginc"
            
            uniform sampler2D _MainTex;
			float4 _MainColor;

            fixed4 frag(v2f_img i) : SV_Target 
			{
                return tex2D(_MainTex, i.uv) * _MainColor;
            }
            ENDCG
        }
    }
}