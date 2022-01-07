
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_OSERR ;
 size_t PARENTSOCKET ;
 int close (int) ;
 int err (int ,char*) ;
 int write (int,char*,int) ;

void
pmcstat_start_process(int *pmcstat_sockpair)
{

 if (write(pmcstat_sockpair[PARENTSOCKET], "!", 1) != 1)
  err(EX_OSERR, "ERROR (parent): write of token failed");

 (void) close(pmcstat_sockpair[PARENTSOCKET]);
}
