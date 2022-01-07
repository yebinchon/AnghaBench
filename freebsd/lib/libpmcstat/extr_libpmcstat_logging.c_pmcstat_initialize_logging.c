
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcstat_process {int dummy; } ;
struct pmcstat_args {int pa_mergepmc; size_t pa_pplugin; size_t pa_plugin; } ;
struct pmc_plugins {int (* pl_init ) () ;} ;
typedef int pid_t ;


 int EX_OSERR ;
 int LIST_INIT (int *) ;
 int PMCSTAT_ALLOCATE ;
 int PMCSTAT_NHASH ;
 int err (int ,char*) ;
 int * pmcstat_image_hash ;
 int * pmcstat_process_hash ;
 struct pmcstat_process* pmcstat_process_lookup (int ,int ) ;
 int pmcstat_string_initialize () ;
 scalar_t__ setenv (char*,char*,int) ;
 int stub1 () ;
 int stub2 () ;

void
pmcstat_initialize_logging(struct pmcstat_process **pmcstat_kernproc,
    struct pmcstat_args *args, struct pmc_plugins *plugins,
    int *pmcstat_npmcs, int *pmcstat_mergepmc)
{
 struct pmcstat_process *pmcstat_kp;
 int i;


 if (setenv("LD_TRACE_LOADED_OBJECTS_FMT1","%o \"%p\" %x\n",1) != 0)
  err(EX_OSERR, "ERROR: Cannot setenv");


 pmcstat_string_initialize();
 for (i = 0; i < PMCSTAT_NHASH; i++) {
  LIST_INIT(&pmcstat_image_hash[i]);
  LIST_INIT(&pmcstat_process_hash[i]);
 }






 if ((pmcstat_kp = pmcstat_process_lookup((pid_t) -1,
     PMCSTAT_ALLOCATE)) == ((void*)0))
  err(EX_OSERR, "ERROR: Cannot initialize logging");

 *pmcstat_kernproc = pmcstat_kp;


 *pmcstat_npmcs = 0;


 *pmcstat_mergepmc = args->pa_mergepmc;





 if (plugins[args->pa_pplugin].pl_init != ((void*)0))
  plugins[args->pa_pplugin].pl_init();
 if (plugins[args->pa_plugin].pl_init != ((void*)0))
  plugins[args->pa_plugin].pl_init();
}
