
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int argString; } ;
struct TYPE_7__ {int fOptState; TYPE_1__ optArg; scalar_t__ optCookie; } ;
typedef TYPE_2__ tOptDesc ;
struct TYPE_8__ {int useCt; char** apzArgs; } ;
typedef TYPE_3__ tArgList ;
typedef int FILE ;


 int OPTST_DISABLED ;
 int OPTST_STACKED ;
 int prt_entry (int *,TYPE_2__*,int ) ;

__attribute__((used)) static void
prt_str_arg(FILE * fp, tOptDesc * pOD)
{
    if (pOD->fOptState & OPTST_STACKED) {
        tArgList * pAL = (tArgList *)pOD->optCookie;
        int uct = pAL->useCt;
        char const ** ppz = pAL->apzArgs;




        if (uct > 1)
            pOD->fOptState &= ~OPTST_DISABLED;

        while (uct-- > 0)
            prt_entry(fp, pOD, *(ppz++));
    } else {
        prt_entry(fp, pOD, pOD->optArg.argString);
    }
}
