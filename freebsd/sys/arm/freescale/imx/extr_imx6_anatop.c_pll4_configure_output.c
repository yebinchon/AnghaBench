
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int IMX6_ANALOG_CCM_PLL_AUDIO ;
 int IMX6_ANALOG_CCM_PLL_AUDIO_DENOM ;
 int IMX6_ANALOG_CCM_PLL_AUDIO_DIV_SELECT_MASK ;
 int IMX6_ANALOG_CCM_PLL_AUDIO_DIV_SELECT_SHIFT ;
 int IMX6_ANALOG_CCM_PLL_AUDIO_ENABLE ;
 int IMX6_ANALOG_CCM_PLL_AUDIO_NUM ;
 int imx6_anatop_write_4 (int ,int) ;

uint32_t
pll4_configure_output(uint32_t mfi, uint32_t mfn, uint32_t mfd)
{
 int reg;






 reg = (IMX6_ANALOG_CCM_PLL_AUDIO_ENABLE);
 reg &= ~(IMX6_ANALOG_CCM_PLL_AUDIO_DIV_SELECT_MASK << IMX6_ANALOG_CCM_PLL_AUDIO_DIV_SELECT_SHIFT);

 reg |= (mfi << IMX6_ANALOG_CCM_PLL_AUDIO_DIV_SELECT_SHIFT);
 imx6_anatop_write_4(IMX6_ANALOG_CCM_PLL_AUDIO, reg);
 imx6_anatop_write_4(IMX6_ANALOG_CCM_PLL_AUDIO_NUM, mfn);
 imx6_anatop_write_4(IMX6_ANALOG_CCM_PLL_AUDIO_DENOM, mfd);

 return (0);
}
