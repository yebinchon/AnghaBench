
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tSuccess ;
struct TYPE_8__ {scalar_t__ default_opt; } ;
struct TYPE_9__ {scalar_t__ pOptDesc; int fOptSet; int (* pUsageProc ) (TYPE_2__*,int ) ;int pzProgPath; TYPE_1__ specOptIdx; } ;
typedef TYPE_2__ tOptions ;
struct TYPE_10__ {scalar_t__ pOD; char const* pzOptArg; int optType; } ;
typedef TYPE_3__ tOptState ;


 int EXIT_FAILURE ;
 int FAILURE ;
 scalar_t__ NAMED_OPTS (TYPE_2__*) ;
 scalar_t__ NO_EQUIVALENT ;
 int OPTPROC_ERRSTOP ;
 int SUCCESS ;
 int TOPT_DEFAULT ;
 int _exit (int ) ;
 int fprintf (int ,char*,int ,char const*) ;
 int stderr ;
 int stub1 (TYPE_2__*,int ) ;
 char* zIllOptStr ;

__attribute__((used)) static tSuccess
opt_unknown(tOptions * opts, char const * name, char * arg, tOptState * st)
{






    if ( (arg == ((void*)0))
       && NAMED_OPTS(opts)
       && (opts->specOptIdx.default_opt != NO_EQUIVALENT)) {

        st->pOD = opts->pOptDesc + opts->specOptIdx.default_opt;
        st->pzOptArg = name;
        st->optType = TOPT_DEFAULT;
        return SUCCESS;
    }

    if ((opts->fOptSet & OPTPROC_ERRSTOP) != 0) {
        fprintf(stderr, zIllOptStr, opts->pzProgPath, name);
        (*opts->pUsageProc)(opts, EXIT_FAILURE);

        _exit(EXIT_FAILURE);
    }

    return FAILURE;
}
