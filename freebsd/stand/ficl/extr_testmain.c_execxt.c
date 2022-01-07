
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pStack; } ;
typedef int FICL_WORD ;
typedef TYPE_1__ FICL_VM ;


 int ficlExecXT (TYPE_1__*,int *) ;
 int * stackPopPtr (int ) ;
 int vmCheckStack (TYPE_1__*,int,int ) ;

__attribute__((used)) static void execxt(FICL_VM *pVM)
{
    FICL_WORD *pFW;




    pFW = stackPopPtr(pVM->pStack);
    ficlExecXT(pVM, pFW);

    return;
}
