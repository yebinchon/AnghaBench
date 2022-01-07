
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tSuccess ;
struct TYPE_7__ {scalar_t__ save_opts; } ;
struct TYPE_8__ {int fOptSet; int * papzHomeList; TYPE_1__ specOptIdx; int * pOptDesc; } ;
typedef TYPE_2__ tOptions ;
typedef int tOptDesc ;


 scalar_t__ DISABLED_OPT (int *) ;
 int ENV_ALL ;
 int ENV_IMM ;
 int ENV_NON_IMM ;
 int FAILURE ;
 scalar_t__ NO_EQUIVALENT ;
 int OPTPROC_PRESETTING ;
 int SUCCESS ;
 int SUCCESSFUL (int ) ;
 int env_presets (TYPE_2__*,int ) ;
 int immediate_opts (TYPE_2__*) ;
 int intern_file_load (TYPE_2__*) ;

__attribute__((used)) static tSuccess
do_presets(tOptions * opts)
{
    tOptDesc * od = ((void*)0);

    if (! SUCCESSFUL(immediate_opts(opts)))
        return FAILURE;






    if ( (opts->specOptIdx.save_opts != NO_EQUIVALENT)
       && (opts->specOptIdx.save_opts != 0)) {
        od = opts->pOptDesc + opts->specOptIdx.save_opts + 1;
        if (DISABLED_OPT(od))
            return SUCCESS;
    }




    opts->fOptSet |= OPTPROC_PRESETTING;




    if (opts->papzHomeList == ((void*)0)) {
        env_presets(opts, ENV_ALL);
    }
    else {
        env_presets(opts, ENV_IMM);




        if ((od != ((void*)0)) && ! DISABLED_OPT(od))
            intern_file_load(opts);





        env_presets(opts, ENV_NON_IMM);
    }
    opts->fOptSet &= ~OPTPROC_PRESETTING;

    return SUCCESS;
}
