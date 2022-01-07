
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_op_simple {int pm_pmcid; } ;
typedef int pmc_id_t ;


 int PMCSTOP ;
 int PMC_CALL (int ,struct pmc_op_simple*) ;

int
pmc_stop(pmc_id_t pmc)
{
 struct pmc_op_simple pmc_stop_args;

 pmc_stop_args.pm_pmcid = pmc;
 return (PMC_CALL(PMCSTOP, &pmc_stop_args));
}
