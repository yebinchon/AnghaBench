
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int printf (char*) ;
 int stub1 () ;
 int zynq7_cpu_reset () ;

__attribute__((used)) static void
zynq7_do_cpu_reset(platform_t plat)
{
 if (zynq7_cpu_reset != ((void*)0))
  (*zynq7_cpu_reset)();

 printf("cpu_reset: no platform cpu_reset.  hanging.\n");
 for (;;)
  ;
}
