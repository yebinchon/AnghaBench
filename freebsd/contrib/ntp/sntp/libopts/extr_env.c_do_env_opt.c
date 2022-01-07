
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int teEnvPresetType ;
typedef int tOptions ;
struct TYPE_6__ {scalar_t__* pzOptArg; int flags; TYPE_1__* pOD; int optType; } ;
typedef TYPE_2__ tOptState ;
struct TYPE_5__ {int fOptState; int * pz_DisablePfx; } ;


 int AGDUPSTR (scalar_t__*,scalar_t__*,char*) ;
 int DO_IMMEDIATELY (int) ;
 int DO_NORMALLY (int) ;
 int DO_SECOND_TIME (int) ;


 scalar_t__ NUL ;
 scalar_t__ OPARG_TYPE_NONE ;
 int OPTST_ALLOC_ARG ;
 int OPTST_ARG_OPTIONAL ;
 int OPTST_DISABLED ;
 scalar_t__ OPTST_GET_ARGTYPE (int) ;
 int OPTST_PRESET ;
 int TOPT_UNDEFINED ;
 scalar_t__* getenv (char*) ;
 int handle_opt (int *,TYPE_2__*) ;
 scalar_t__ streqvcmp (scalar_t__*,int *) ;

__attribute__((used)) static void
do_env_opt(tOptState * os, char * env_name,
            tOptions * pOpts, teEnvPresetType type)
{
    os->pzOptArg = getenv(env_name);
    if (os->pzOptArg == ((void*)0))
        return;

    os->flags = OPTST_PRESET | OPTST_ALLOC_ARG | os->pOD->fOptState;
    os->optType = TOPT_UNDEFINED;

    if ( (os->pOD->pz_DisablePfx != ((void*)0))
       && (streqvcmp(os->pzOptArg, os->pOD->pz_DisablePfx) == 0)) {
        os->flags |= OPTST_DISABLED;
        os->pzOptArg = ((void*)0);
        handle_opt(pOpts, os);
        return;
    }

    switch (type) {
    case 129:



        if (DO_IMMEDIATELY(os->flags))
            break;
        return;

    case 128:



        if (DO_NORMALLY(os->flags) || DO_SECOND_TIME(os->flags))
            break;
        return;

    default:
        break;
    }







    if (OPTST_GET_ARGTYPE(os->pOD->fOptState) == OPARG_TYPE_NONE) {



        os->pzOptArg = ((void*)0);

    } else if (os->pzOptArg[0] == NUL) {




        if ((os->pOD->fOptState & OPTST_ARG_OPTIONAL) == 0)
            return;
        os->pzOptArg = ((void*)0);

    } else {
        AGDUPSTR(os->pzOptArg, os->pzOptArg, "option argument");
        os->flags |= OPTST_ALLOC_ARG;
    }

    handle_opt(pOpts, os);
}
