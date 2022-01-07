
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int IMX51CLK_ESDHC1_CLK_ROOT ;
 int imx51_get_clock (int ) ;

uint32_t
imx_ccm_sdhci_hz(void)
{

 return (imx51_get_clock(IMX51CLK_ESDHC1_CLK_ROOT));
}
