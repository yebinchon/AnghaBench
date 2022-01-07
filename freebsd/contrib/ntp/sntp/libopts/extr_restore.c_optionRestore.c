
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* pzProgName; char* pzPROGNAME; struct TYPE_7__* pSavedState; scalar_t__ optCt; struct TYPE_7__* pOptDesc; } ;
typedef TYPE_1__ tOptions ;
typedef int tOptDesc ;


 int EXIT_FAILURE ;
 int fixupSavedOptionArgs (TYPE_1__*) ;
 int fprintf (int ,char*,char const*) ;
 int memcpy (TYPE_1__*,TYPE_1__*,size_t) ;
 int optionFree (TYPE_1__*) ;
 int option_exits (int ) ;
 int stderr ;
 char* zNil ;
 char* zNoState ;

void
optionRestore(tOptions * pOpts)
{
    tOptions * p = (tOptions *)pOpts->pSavedState;

    if (p == ((void*)0)) {
        char const * pzName = pOpts->pzProgName;
        if (pzName == ((void*)0)) {
            pzName = pOpts->pzPROGNAME;
            if (pzName == ((void*)0))
                pzName = zNil;
        }
        fprintf(stderr, zNoState, pzName);
        option_exits(EXIT_FAILURE);
    }

    pOpts->pSavedState = ((void*)0);
    optionFree(pOpts);

    memcpy(pOpts, p, sizeof(*p));
    memcpy(pOpts->pOptDesc, p+1, (size_t)p->optCt * sizeof(tOptDesc));
    pOpts->pSavedState = p;

    fixupSavedOptionArgs(pOpts);
}
