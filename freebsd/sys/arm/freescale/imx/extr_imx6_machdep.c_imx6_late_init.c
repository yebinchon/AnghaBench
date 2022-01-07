
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int platform_t ;


 int imx_wdog_init_last_reset (int const) ;

__attribute__((used)) static void
imx6_late_init(platform_t plat)
{
 const uint32_t IMX6_WDOG_SR_PHYS = 0x020bc004;

 imx_wdog_init_last_reset(IMX6_WDOG_SR_PHYS);
}
