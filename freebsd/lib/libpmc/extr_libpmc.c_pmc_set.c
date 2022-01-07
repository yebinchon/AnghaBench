
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_op_pmcsetcount {int pm_count; int pm_pmcid; } ;
typedef int pmc_value_t ;
typedef int pmc_id_t ;


 int PMCSETCOUNT ;
 scalar_t__ PMC_CALL (int ,struct pmc_op_pmcsetcount*) ;

int
pmc_set(pmc_id_t pmc, pmc_value_t value)
{
 struct pmc_op_pmcsetcount sc;

 sc.pm_pmcid = pmc;
 sc.pm_count = value;

 if (PMC_CALL(PMCSETCOUNT, &sc) < 0)
  return (-1);
 return (0);
}
