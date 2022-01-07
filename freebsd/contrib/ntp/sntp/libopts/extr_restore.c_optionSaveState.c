
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ optCt; struct TYPE_7__* pOptDesc; struct TYPE_7__* pSavedState; } ;
typedef TYPE_1__ tOptions ;
typedef int tOptDesc ;


 TYPE_1__* AGALOC (size_t,char*) ;
 int fixupSavedOptionArgs (TYPE_1__*) ;
 int memcpy (TYPE_1__*,TYPE_1__*,size_t) ;

void
optionSaveState(tOptions * pOpts)
{
    tOptions * p = (tOptions *)pOpts->pSavedState;

    if (p == ((void*)0)) {
        size_t sz = sizeof(*pOpts)
            + ((size_t)pOpts->optCt * sizeof(tOptDesc));
        p = AGALOC(sz, "saved option state");

        pOpts->pSavedState = p;
    }

    memcpy(p, pOpts, sizeof(*p));
    memcpy(p + 1, pOpts->pOptDesc, (size_t)p->optCt * sizeof(tOptDesc));

    fixupSavedOptionArgs(pOpts);
}
