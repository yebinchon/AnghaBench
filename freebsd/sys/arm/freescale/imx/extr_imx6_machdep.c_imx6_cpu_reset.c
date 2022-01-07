
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int platform_t ;


 int imx_wdog_cpu_reset (int const) ;

__attribute__((used)) static void
imx6_cpu_reset(platform_t plat)
{
 const uint32_t IMX6_WDOG_CR_PHYS = 0x020bc000;

 imx_wdog_cpu_reset(IMX6_WDOG_CR_PHYS);
}
