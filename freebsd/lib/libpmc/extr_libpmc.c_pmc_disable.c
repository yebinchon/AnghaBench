
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_op_pmcadmin {int pm_cpu; int pm_pmc; int pm_state; } ;


 int PMCADMIN ;
 int PMC_CALL (int ,struct pmc_op_pmcadmin*) ;
 int PMC_STATE_DISABLED ;

int
pmc_disable(int cpu, int pmc)
{
 struct pmc_op_pmcadmin ssa;

 ssa.pm_cpu = cpu;
 ssa.pm_pmc = pmc;
 ssa.pm_state = PMC_STATE_DISABLED;
 return (PMC_CALL(PMCADMIN, &ssa));
}
