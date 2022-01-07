
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WORDKIND ;
struct TYPE_8__ {TYPE_1__* pSys; int pStack; } ;
struct TYPE_7__ {int bpStep; } ;
typedef int FICL_WORD ;
typedef TYPE_2__ FICL_VM ;




 int ficlWordClassify (int *) ;
 int seeXT (TYPE_2__*) ;
 int * stackPopPtr (int ) ;
 int stackPushPtr (int ,int *) ;
 int vmExecute (TYPE_2__*,int *) ;
 int vmSetBreak (TYPE_2__*,int *) ;

void ficlDebugXT(FICL_VM *pVM)
{
    FICL_WORD *xt = stackPopPtr(pVM->pStack);
    WORDKIND wk = ficlWordClassify(xt);

    stackPushPtr(pVM->pStack, xt);
    seeXT(pVM);

    switch (wk)
    {
    case 129:
    case 128:



        vmExecute(pVM, xt);
        vmSetBreak(pVM, &(pVM->pSys->bpStep));
        break;

    default:
        vmExecute(pVM, xt);
        break;
    }

    return;
}
