
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_op_pmcattach {int pm_pid; int pm_pmc; } ;
typedef int pmc_id_t ;
typedef int pid_t ;


 int PMCATTACH ;
 int PMC_CALL (int ,struct pmc_op_pmcattach*) ;

int
pmc_attach(pmc_id_t pmc, pid_t pid)
{
 struct pmc_op_pmcattach pmc_attach_args;

 pmc_attach_args.pm_pmc = pmc;
 pmc_attach_args.pm_pid = pid;

 return (PMC_CALL(PMCATTACH, &pmc_attach_args));
}
