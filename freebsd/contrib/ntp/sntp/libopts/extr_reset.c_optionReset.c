
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int * originalOptArgCookie; TYPE_2__* originalOptArgArray; } ;
typedef TYPE_3__ tOptions ;
struct TYPE_9__ {int argString; } ;
struct TYPE_12__ {size_t optIndex; int fOptState; int optCookie; TYPE_1__ optArg; int (* pOptProc ) (TYPE_3__*,TYPE_4__*) ;} ;
typedef TYPE_4__ tOptDesc ;
struct TYPE_10__ {int argString; } ;


 int OPTST_PERSISTENT_MASK ;
 int OPTST_RESET ;
 int stub1 (TYPE_3__*,TYPE_4__*) ;

__attribute__((used)) static void
optionReset(tOptions * pOpts, tOptDesc * pOD)
{
    pOD->fOptState &= OPTST_PERSISTENT_MASK;
    pOD->fOptState |= OPTST_RESET;
    if (pOD->pOptProc != ((void*)0))
        pOD->pOptProc(pOpts, pOD);
    pOD->optArg.argString =
        pOpts->originalOptArgArray[ pOD->optIndex ].argString;
    pOD->optCookie = pOpts->originalOptArgCookie[ pOD->optIndex ];
    pOD->fOptState &= OPTST_PERSISTENT_MASK;
}
