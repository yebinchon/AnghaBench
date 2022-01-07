
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tSuccess ;
struct TYPE_8__ {int fOptSet; int (* pUsageProc ) (TYPE_1__*,int ) ;int pzProgName; TYPE_3__* pOptDesc; } ;
typedef TYPE_1__ tOptions ;
struct TYPE_9__ {char* pzOptArg; int optType; TYPE_3__* pOD; int flags; } ;
typedef TYPE_2__ tOptState ;
struct TYPE_10__ {int * pzText; int pz_Name; } ;
typedef TYPE_3__ tOptDesc ;


 int EXIT_FAILURE ;
 int FAILURE ;
 int NL ;
 int OPTPROC_ERRSTOP ;
 int OPTST_DISABLED ;
 char* SET_OFF_FMT ;
 scalar_t__ SKIP_OPT (TYPE_3__*) ;
 int SUCCESS ;
 int TOPT_LONG ;
 int _exit (int ) ;
 int fprintf (int ,char*,int *,...) ;
 int fputc (int ,int ) ;
 int stderr ;
 int stub1 (TYPE_1__*,int ) ;
 char* zDisabledErr ;

__attribute__((used)) static tSuccess
opt_set(tOptions * opts, char * arg, int idx, bool disable, tOptState * st)
{
    tOptDesc * pOD = opts->pOptDesc + idx;

    if (SKIP_OPT(pOD)) {
        if ((opts->fOptSet & OPTPROC_ERRSTOP) == 0)
            return FAILURE;

        fprintf(stderr, zDisabledErr, opts->pzProgName, pOD->pz_Name);
        if (pOD->pzText != ((void*)0))
            fprintf(stderr, SET_OFF_FMT, pOD->pzText);
        fputc(NL, stderr);
        (*opts->pUsageProc)(opts, EXIT_FAILURE);

        _exit(EXIT_FAILURE);
    }





    if (disable)
        st->flags |= OPTST_DISABLED;

    st->pOD = pOD;
    st->pzOptArg = arg;
    st->optType = TOPT_LONG;

    return SUCCESS;
}
