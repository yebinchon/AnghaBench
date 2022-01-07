
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_op_configurelog {int pm_logfd; } ;


 int CONFIGURELOG ;
 scalar_t__ PMC_CALL (int ,struct pmc_op_configurelog*) ;

int
pmc_configure_logfile(int fd)
{
 struct pmc_op_configurelog cla;

 cla.pm_logfd = fd;
 if (PMC_CALL(CONFIGURELOG, &cla) < 0)
  return (-1);
 return (0);
}
