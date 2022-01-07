
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int imx_wdog_cpu_reset (int) ;

__attribute__((used)) static void
imx53_cpu_reset(platform_t plat)
{

 imx_wdog_cpu_reset(0x53F98000);
}
