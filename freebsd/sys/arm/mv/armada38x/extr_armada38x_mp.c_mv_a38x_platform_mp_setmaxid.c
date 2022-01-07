
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 scalar_t__ mp_maxid ;
 scalar_t__ mp_ncpus ;
 scalar_t__ platform_cnt_cpus () ;

void
mv_a38x_platform_mp_setmaxid(platform_t plate)
{


 mp_ncpus = platform_cnt_cpus();
 mp_maxid = mp_ncpus - 1;
}
