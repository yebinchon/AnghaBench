
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int IMX6_ANALOG_CCM_PLL_ARM ;
 int IMX6_ANALOG_CCM_PLL_ARM_DIV_MASK ;
 int cpufreq_mhz_from_div (int ,int,int) ;
 int imx6_anatop_read_4 (int ) ;
 int imx6_anatop_sc ;
 int imx_ccm_get_cacrr () ;

uint32_t
imx6_get_cpu_clock(void)
{
 uint32_t corediv, plldiv;

 corediv = imx_ccm_get_cacrr();
 plldiv = imx6_anatop_read_4(IMX6_ANALOG_CCM_PLL_ARM) &
     IMX6_ANALOG_CCM_PLL_ARM_DIV_MASK;
 return (cpufreq_mhz_from_div(imx6_anatop_sc, corediv, plldiv));
}
