
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int TUNABLE_INT_FETCH (char*,int*) ;
 int mp_maxid ;
 int mp_ncpus ;

void
socfpga_mp_setmaxid(platform_t plat)
{
 int hwcpu, ncpu;


 if (mp_ncpus != 0)
  return;

 hwcpu = 2;

 ncpu = hwcpu;
 TUNABLE_INT_FETCH("hw.ncpu", &ncpu);
 if (ncpu < 1 || ncpu > hwcpu)
  ncpu = hwcpu;

 mp_ncpus = ncpu;
 mp_maxid = ncpu - 1;
}
