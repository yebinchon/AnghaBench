
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_op_simple {int pm_pmcid; } ;
typedef int pmc_id_t ;


 int PMCSTART ;
 int PMC_CALL (int ,struct pmc_op_simple*) ;

int
pmc_start(pmc_id_t pmc)
{
 struct pmc_op_simple pmc_start_args;

 pmc_start_args.pm_pmcid = pmc;
 return (PMC_CALL(PMCSTART, &pmc_start_args));
}
