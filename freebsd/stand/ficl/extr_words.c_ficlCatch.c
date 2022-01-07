
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int jmp_buf ;
struct TYPE_12__ {scalar_t__ rStack; scalar_t__ pStack; int * pState; TYPE_1__* pSys; } ;
struct TYPE_11__ {TYPE_2__* pExitInner; } ;
typedef int FICL_WORD ;
typedef TYPE_2__ FICL_VM ;
typedef int FICL_STACK ;


 int PUSHINT (int) ;

 int assert (TYPE_2__*) ;
 int memcpy (void*,void*,int) ;
 int setjmp (int ) ;
 int * stackPopPtr (scalar_t__) ;
 int vmCheckStack (TYPE_2__*,int,int ) ;
 int vmExecute (TYPE_2__*,int *) ;
 int vmInnerLoop (TYPE_2__*) ;
 int vmPopIP (TYPE_2__*) ;
 int vmPushIP (TYPE_2__*,TYPE_2__**) ;

__attribute__((used)) static void ficlCatch(FICL_VM *pVM)
{
    int except;
    jmp_buf vmState;
    FICL_VM VM;
    FICL_STACK pStack;
    FICL_STACK rStack;
    FICL_WORD *pFW;

    assert(pVM);
    assert(pVM->pSys->pExitInner);
    pFW = stackPopPtr(pVM->pStack);
    memcpy((void*)&VM, (void*)pVM, sizeof(FICL_VM));
    memcpy((void*)&pStack, (void*)pVM->pStack, sizeof(FICL_STACK));
    memcpy((void*)&rStack, (void*)pVM->rStack, sizeof(FICL_STACK));




    pVM->pState = &vmState;




    except = setjmp(vmState);

    switch (except)
    {





    case 0:
        vmPushIP(pVM, &(pVM->pSys->pExitInner));
        vmExecute(pVM, pFW);
        vmInnerLoop(pVM);
        break;





    case 128:
        vmPopIP(pVM);
        pVM->pState = VM.pState;
        PUSHINT(0);
        break;





    default:

        memcpy((void*)pVM, (void*)&VM, sizeof(FICL_VM));
        memcpy((void*)pVM->pStack, (void*)&pStack, sizeof(FICL_STACK));
        memcpy((void*)pVM->rStack, (void*)&rStack, sizeof(FICL_STACK));

        PUSHINT(except);
        break;
    }
}
