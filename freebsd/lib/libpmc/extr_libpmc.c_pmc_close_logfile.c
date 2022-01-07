
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOSELOG ;
 int PMC_CALL (int ,int ) ;

int
pmc_close_logfile(void)
{
 return (PMC_CALL(CLOSELOG,0));
}
