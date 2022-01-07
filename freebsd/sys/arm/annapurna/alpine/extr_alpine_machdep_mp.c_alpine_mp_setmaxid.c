
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 scalar_t__ mp_maxid ;
 scalar_t__ mp_ncpus ;
 scalar_t__ platform_mp_get_core_cnt () ;

void
alpine_mp_setmaxid(platform_t plat)
{

 mp_ncpus = platform_mp_get_core_cnt();
 mp_maxid = mp_ncpus - 1;
}
