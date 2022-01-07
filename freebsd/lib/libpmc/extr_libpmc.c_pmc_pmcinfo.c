
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_pmcinfo {int dummy; } ;
struct pmc_op_getpmcinfo {int pm_cpu; } ;
struct pmc_info {int dummy; } ;


 int GETPMCINFO ;
 scalar_t__ PMC_CALL (int ,struct pmc_op_getpmcinfo*) ;
 struct pmc_op_getpmcinfo* calloc (int,int) ;
 int free (struct pmc_op_getpmcinfo*) ;
 int pmc_npmc (int) ;

int
pmc_pmcinfo(int cpu, struct pmc_pmcinfo **ppmci)
{
 int nbytes, npmc;
 struct pmc_op_getpmcinfo *pmci;

 if ((npmc = pmc_npmc(cpu)) < 0)
  return (-1);

 nbytes = sizeof(struct pmc_op_getpmcinfo) +
     npmc * sizeof(struct pmc_info);

 if ((pmci = calloc(1, nbytes)) == ((void*)0))
  return (-1);

 pmci->pm_cpu = cpu;

 if (PMC_CALL(GETPMCINFO, pmci) < 0) {
  free(pmci);
  return (-1);
 }


 *ppmci = (struct pmc_pmcinfo *) pmci;
 return (0);
}
