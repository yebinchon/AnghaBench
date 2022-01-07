
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int cpu_reset_deassert () ;
 int pmsu_boot_secondary_cpu () ;

void
mv_a38x_platform_mp_start_ap(platform_t plate)
{
 int rv;


 rv = pmsu_boot_secondary_cpu();
 if (rv != 0)
  return;


 cpu_reset_deassert();
}
