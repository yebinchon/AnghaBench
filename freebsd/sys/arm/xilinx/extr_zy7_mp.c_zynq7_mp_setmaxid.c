
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int mp_maxid ;
 int mp_ncpus ;

void
zynq7_mp_setmaxid(platform_t plat)
{

 mp_maxid = 1;
 mp_ncpus = 2;
}
