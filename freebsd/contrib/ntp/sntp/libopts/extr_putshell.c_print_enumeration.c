
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int pzPROGNAME; } ;
typedef TYPE_2__ tOptions ;
struct TYPE_7__ {uintptr_t argEnum; int argString; } ;
struct TYPE_9__ {int fOptState; int pz_NAME; TYPE_1__ optArg; int (* pOptProc ) (int ,TYPE_3__*) ;} ;
typedef TYPE_3__ tOptDesc ;


 int AGFREE (int ) ;
 int OPTPROC_RETURN_VALNAME ;
 int OPTST_ALLOC_ARG ;
 char* OPT_END_FMT ;
 char* OPT_VAL_FMT ;
 char* QUOT_ARG_FMT ;
 int printf (char*,int ,...) ;
 int stub1 (int ,TYPE_3__*) ;

__attribute__((used)) static void
print_enumeration(tOptions * pOpts, tOptDesc * pOD)
{
    uintptr_t e_val = pOD->optArg.argEnum;
    printf(OPT_VAL_FMT, pOpts->pzPROGNAME, pOD->pz_NAME);




    (*(pOD->pOptProc))(OPTPROC_RETURN_VALNAME, pOD);
    printf(QUOT_ARG_FMT, pOD->optArg.argString);
    if (pOD->fOptState & OPTST_ALLOC_ARG)
        AGFREE(pOD->optArg.argString);
    pOD->optArg.argEnum = e_val;

    printf(OPT_END_FMT, pOpts->pzPROGNAME, pOD->pz_NAME);
}
