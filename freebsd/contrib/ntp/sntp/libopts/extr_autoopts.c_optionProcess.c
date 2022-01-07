
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int save_opts; } ;
struct TYPE_11__ {int curOptIdx; int fOptSet; int (* pUsageProc ) (TYPE_2__*,int ) ;TYPE_1__ specOptIdx; int pOptDesc; scalar_t__ origArgCt; int * pzCurOpt; } ;
typedef TYPE_2__ tOptions ;
typedef int tOptDesc ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;

 int OPTPROC_ERRSTOP ;
 int SELECTED_OPT (int *) ;
 int SUCCESSFUL (int ) ;
 int ao_bug (int ) ;
 int ao_initialize (TYPE_2__*,int,char**) ;
 int is_consistent (TYPE_2__*) ;
 int optionSaveFile (TYPE_2__*) ;
 int option_exits (int ) ;
 int regular_opts (TYPE_2__*) ;
 int stub1 (TYPE_2__*,int ) ;
 int validate_struct (TYPE_2__*,char*) ;
 int zbad_data_msg ;

int
optionProcess(tOptions * opts, int a_ct, char ** a_v)
{
    if (! SUCCESSFUL(validate_struct(opts, a_v[0])))
        ao_bug(zbad_data_msg);





    if (! ao_initialize(opts, a_ct, a_v))
        return 0;





    if (opts->curOptIdx <= 0) {
        opts->curOptIdx = 1;
        opts->pzCurOpt = ((void*)0);
    }

    if (! SUCCESSFUL(regular_opts(opts)))
        return (int)opts->origArgCt;
    switch (opts->specOptIdx.save_opts) {
    case 0:
    case 128:
        break;
    default:
    {
        tOptDesc * od = opts->pOptDesc + opts->specOptIdx.save_opts;

        if (SELECTED_OPT(od)) {
            optionSaveFile(opts);
            option_exits(EXIT_SUCCESS);
        }
    }
    }





    if (((opts->fOptSet & OPTPROC_ERRSTOP) != 0)
       && (! is_consistent(opts)))
        (*opts->pUsageProc)(opts, EXIT_FAILURE);

    return (int)opts->curOptIdx;
}
