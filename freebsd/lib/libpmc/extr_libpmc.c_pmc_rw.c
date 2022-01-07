
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_op_pmcrw {int pm_flags; int pm_value; int pm_pmcid; } ;
typedef int pmc_value_t ;
typedef int pmc_id_t ;


 int PMCRW ;
 scalar_t__ PMC_CALL (int ,struct pmc_op_pmcrw*) ;
 int PMC_F_NEWVALUE ;
 int PMC_F_OLDVALUE ;

int
pmc_rw(pmc_id_t pmc, pmc_value_t newvalue, pmc_value_t *oldvaluep)
{
 struct pmc_op_pmcrw pmc_rw_op;

 pmc_rw_op.pm_pmcid = pmc;
 pmc_rw_op.pm_flags = PMC_F_NEWVALUE | PMC_F_OLDVALUE;
 pmc_rw_op.pm_value = newvalue;

 if (PMC_CALL(PMCRW, &pmc_rw_op) < 0)
  return (-1);

 *oldvaluep = pmc_rw_op.pm_value;
 return (0);
}
