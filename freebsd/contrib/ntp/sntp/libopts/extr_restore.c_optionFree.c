
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char* argString; } ;
struct TYPE_10__ {int optCt; int fOptState; char* pSavedState; struct TYPE_10__* pOptDesc; int * optCookie; TYPE_1__ optArg; } ;
typedef TYPE_2__ tOptions ;
typedef TYPE_2__ tOptDesc ;


 int AGFREE (char*) ;


 int OPTST_ALLOC_ARG ;
 int OPTST_GET_ARGTYPE (int) ;
 int OPTST_STACKED ;
 int memcpy (TYPE_2__*,TYPE_2__*,size_t) ;
 int optionUnstackArg (TYPE_2__*,TYPE_2__*) ;
 int unload_arg_list (int *) ;

void
optionFree(tOptions * pOpts)
{
 free_saved_state:
    {
        tOptDesc * p = pOpts->pOptDesc;
        int ct = pOpts->optCt;
        do {
            if (p->fOptState & OPTST_ALLOC_ARG) {
                AGFREE(p->optArg.argString);
                p->optArg.argString = ((void*)0);
                p->fOptState &= ~OPTST_ALLOC_ARG;
            }

            switch (OPTST_GET_ARGTYPE(p->fOptState)) {
            case 128:







                                 ;

                break;

            case 129:
                if (p->optCookie != ((void*)0))
                    unload_arg_list(p->optCookie);
                break;
            }

            p->optCookie = ((void*)0);
        } while (p++, --ct > 0);
    }
    if (pOpts->pSavedState != ((void*)0)) {
        tOptions * p = (tOptions *)pOpts->pSavedState;
        memcpy(pOpts, p, sizeof(*p));
        memcpy(pOpts->pOptDesc, p+1, (size_t)p->optCt * sizeof(tOptDesc));
        AGFREE(pOpts->pSavedState);
        pOpts->pSavedState = ((void*)0);
        goto free_saved_state;
    }
}
