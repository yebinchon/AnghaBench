
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int printf (char*) ;
 int stub1 () ;
 int ti_cpu_reset () ;

__attribute__((used)) static void
ti_plat_cpu_reset(platform_t plat)
{
 if (ti_cpu_reset)
  (*ti_cpu_reset)();
 else
  printf("no cpu_reset implementation\n");
}
