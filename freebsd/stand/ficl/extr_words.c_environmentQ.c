
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int pStack; TYPE_1__* pSys; } ;
struct TYPE_9__ {int cp; scalar_t__ count; } ;
struct TYPE_8__ {int * envp; } ;
typedef TYPE_2__ STRINGINFO ;
typedef int FICL_WORD ;
typedef TYPE_3__ FICL_VM ;
typedef int FICL_DICT ;
typedef scalar_t__ FICL_COUNT ;


 int FICL_FALSE ;
 int FICL_TRUE ;
 int PUSHINT (int ) ;
 int * dictLookup (int *,TYPE_2__) ;
 int stackPopPtr (int ) ;
 scalar_t__ stackPopUNS (int ) ;
 int vmCheckStack (TYPE_3__*,int,int) ;
 int vmExecute (TYPE_3__*,int *) ;

__attribute__((used)) static void environmentQ(FICL_VM *pVM)
{
    FICL_DICT *envp;
    FICL_WORD *pFW;
    STRINGINFO si;




    envp = pVM->pSys->envp;
    si.count = (FICL_COUNT)stackPopUNS(pVM->pStack);
    si.cp = stackPopPtr(pVM->pStack);

    pFW = dictLookup(envp, si);

    if (pFW != ((void*)0))
    {
        vmExecute(pVM, pFW);
        PUSHINT(FICL_TRUE);
    }
    else
    {
        PUSHINT(FICL_FALSE);
    }
    return;
}
