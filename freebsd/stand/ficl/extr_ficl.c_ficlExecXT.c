
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int jmp_buf ;
struct TYPE_12__ {int * runningWord; int * pState; TYPE_1__* pSys; } ;
struct TYPE_11__ {TYPE_2__* pExitInner; } ;
typedef int FICL_WORD ;
typedef TYPE_2__ FICL_VM ;
 int assert (TYPE_2__*) ;
 int setjmp (int ) ;
 int vmExecute (TYPE_2__*,int *) ;
 int vmInnerLoop (TYPE_2__*) ;
 int vmPopIP (TYPE_2__*) ;
 int vmPushIP (TYPE_2__*,TYPE_2__**) ;
 int vmThrow (TYPE_2__*,int) ;

int ficlExecXT(FICL_VM *pVM, FICL_WORD *pWord)
{
    int except;
    jmp_buf vmState;
    jmp_buf *oldState;
    FICL_WORD *oldRunningWord;

    assert(pVM);
    assert(pVM->pSys->pExitInner);





    oldRunningWord = pVM->runningWord;



    oldState = pVM->pState;
    pVM->pState = &vmState;
    except = setjmp(vmState);

    if (except)
        vmPopIP(pVM);
    else
        vmPushIP(pVM, &(pVM->pSys->pExitInner));

    switch (except)
    {
    case 0:
        vmExecute(pVM, pWord);
        vmInnerLoop(pVM);
        break;

    case 132:
    case 134:
        break;

    case 129:
    case 131:
    case 128:
    case 130:
    case 133:
    case 136:
    case 135:
    default:
        if (oldState)
        {
            pVM->pState = oldState;
            vmThrow(pVM, except);
        }
        break;
    }

    pVM->pState = oldState;
    pVM->runningWord = oldRunningWord;
    return (except);
}
