
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pmc_op_getmsr {int pm_msr; int pm_pmcid; } ;
typedef int pmc_id_t ;


 int PMCGETMSR ;
 scalar_t__ PMC_CALL (int ,struct pmc_op_getmsr*) ;

int
pmc_get_msr(pmc_id_t pmc, uint32_t *msr)
{
 struct pmc_op_getmsr gm;

 gm.pm_pmcid = pmc;
 if (PMC_CALL(PMCGETMSR, &gm) < 0)
  return (-1);
 *msr = gm.pm_msr;
 return (0);
}
