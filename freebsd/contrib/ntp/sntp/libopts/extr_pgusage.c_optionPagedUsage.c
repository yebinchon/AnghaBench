
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* pUsageProc ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__ tOptions ;
struct TYPE_9__ {int fOptState; } ;
typedef TYPE_2__ tOptDesc ;


 int AGFREE (char*) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int OPTST_RESET ;



 int STDERR_FILENO ;
 int STDOUT_FILENO ;
 int _exit (int ) ;
 int atexit (void (*) ()) ;
 int dup2 (int ,int ) ;
 int fclose (int ) ;
 int fputs (char*,int ) ;
 int ignore_val (int ) ;
 char* mk_pager_cmd (char*) ;
 int * open_tmp_usage (char**) ;
 int * option_usage_fp ;
 int pagerState ;
 int print_exit ;
 int stderr ;
 int stdout ;
 int stub1 (TYPE_1__*,int ) ;
 int stub2 (TYPE_1__*,int ) ;
 int stub3 (TYPE_1__*,int ) ;
 int system (char*) ;

void
optionPagedUsage(tOptions * opts, tOptDesc * od)
{

    if ((od->fOptState & OPTST_RESET) != 0)
        return;

    (*opts->pUsageProc)(opts, EXIT_SUCCESS);
}
