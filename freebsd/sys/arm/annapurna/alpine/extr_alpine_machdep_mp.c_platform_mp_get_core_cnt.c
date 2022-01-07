
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CPUV7_L2CTLR_NPROC (int ) ;
 int alpine_validate_cpu ;
 int cp15_l2ctlr_get () ;
 int ofw_cpu_early_foreach (int ,int) ;
 int printf (char*,int,int) ;

__attribute__((used)) static int
platform_mp_get_core_cnt(void)
{
 static int ncores = 0;
 int nchilds;
 uint32_t reg;


 if (ncores)
  return (ncores);

 reg = cp15_l2ctlr_get();
 ncores = CPUV7_L2CTLR_NPROC(reg);

 nchilds = ofw_cpu_early_foreach(alpine_validate_cpu, 0);


 if ((nchilds > 0) && (nchilds < ncores)) {
  printf("SMP: limiting number of active CPUs to %d out of %d\n",
      nchilds, ncores);
  ncores = nchilds;
 }

 return (ncores);
}
