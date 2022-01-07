
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * origXT; int ** address; } ;
struct TYPE_5__ {int ** ip; int pSys; } ;
typedef int FICL_WORD ;
typedef TYPE_1__ FICL_VM ;
typedef TYPE_2__ FICL_BREAKPOINT ;


 int assert (int *) ;
 int * ficlLookup (int ,char*) ;

__attribute__((used)) static void vmSetBreak(FICL_VM *pVM, FICL_BREAKPOINT *pBP)
{
    FICL_WORD *pStep = ficlLookup(pVM->pSys, "step-break");
    assert(pStep);

    pBP->address = pVM->ip;
    pBP->origXT = *pVM->ip;
    *pVM->ip = pStep;
}
