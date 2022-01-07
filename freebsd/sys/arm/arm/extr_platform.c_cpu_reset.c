
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PLATFORM_CPU_RESET (int ) ;
 int cpu_sleep (int ) ;
 int intr_disable () ;
 int plat_obj ;
 int printf (char*) ;

void
cpu_reset(void)
{

 PLATFORM_CPU_RESET(plat_obj);

 printf("cpu_reset failed");

 intr_disable();
 while(1) {
  cpu_sleep(0);
 }
}
