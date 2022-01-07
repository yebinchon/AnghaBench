
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_op_pmcattach {int pm_pid; int pm_pmc; } ;
typedef int pmc_id_t ;
typedef int pid_t ;


 int PMCDETACH ;
 int PMC_CALL (int ,struct pmc_op_pmcattach*) ;

int
pmc_detach(pmc_id_t pmc, pid_t pid)
{
 struct pmc_op_pmcattach pmc_detach_args;

 pmc_detach_args.pm_pmc = pmc;
 pmc_detach_args.pm_pid = pid;
 return (PMC_CALL(PMCDETACH, &pmc_detach_args));
}
