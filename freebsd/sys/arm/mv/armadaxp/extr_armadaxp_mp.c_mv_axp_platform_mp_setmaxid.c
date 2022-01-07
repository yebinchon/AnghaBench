
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 scalar_t__ mp_maxid ;
 scalar_t__ mp_ncpus ;
 scalar_t__ platform_get_ncpus () ;

void
mv_axp_platform_mp_setmaxid(platform_t plat)
{

 mp_ncpus = platform_get_ncpus();
 mp_maxid = mp_ncpus - 1;
}
