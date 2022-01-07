
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_op_simple {int pm_pmcid; } ;
typedef int pmc_id_t ;


 int PMCRELEASE ;
 int PMC_CALL (int ,struct pmc_op_simple*) ;

int
pmc_release(pmc_id_t pmc)
{
 struct pmc_op_simple pmc_release_args;

 pmc_release_args.pm_pmcid = pmc;
 return (PMC_CALL(PMCRELEASE, &pmc_release_args));
}
