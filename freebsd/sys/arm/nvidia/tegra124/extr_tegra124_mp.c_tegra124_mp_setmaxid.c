
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int CPUV7_L2CTLR_NPROC (int) ;
 int cp15_l2ctlr_get () ;
 int mp_maxid ;
 int mp_ncpus ;

void
tegra124_mp_setmaxid(platform_t plat)
{
 int ncpu;


 if (mp_ncpus != 0)
  return;


 ncpu = cp15_l2ctlr_get();
 ncpu = CPUV7_L2CTLR_NPROC(ncpu);

 mp_ncpus = ncpu;
 mp_maxid = ncpu - 1;
}
