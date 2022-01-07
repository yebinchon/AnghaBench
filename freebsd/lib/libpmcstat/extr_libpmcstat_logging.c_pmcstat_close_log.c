
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcstat_args {int pa_logfd; int pa_flags; } ;


 int EX_OSERR ;
 int FLAG_HAS_PIPE ;
 int PMCSTAT_EXITING ;
 int PMCSTAT_FINISHED ;
 int err (int ,char*) ;
 scalar_t__ pmc_close_logfile () ;

int
pmcstat_close_log(struct pmcstat_args *args)
{




 if (args->pa_logfd != -1) {
  if (pmc_close_logfile() < 0)
   err(EX_OSERR, "ERROR: logging failed");
 }

 return (args->pa_flags & FLAG_HAS_PIPE ? PMCSTAT_EXITING :
     PMCSTAT_FINISHED);
}
