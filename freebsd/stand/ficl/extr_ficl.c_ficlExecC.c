
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_17__ ;


typedef int jmp_buf ;
struct TYPE_24__ {TYPE_17__* localp; TYPE_4__** pInterp; int * dp; } ;
struct TYPE_21__ {int i; } ;
struct TYPE_23__ {int fRestart; int * pState; int state; TYPE_2__ sourceID; TYPE_1__* runningWord; TYPE_5__* pSys; } ;
struct TYPE_22__ {int size; } ;
struct TYPE_20__ {int (* code ) (TYPE_4__*) ;} ;
struct TYPE_19__ {TYPE_3__* pForthWords; } ;
typedef int TIB ;
typedef TYPE_4__ FICL_VM ;
typedef TYPE_5__ FICL_SYSTEM ;
typedef int FICL_INT ;
typedef int FICL_DICT ;


 int COMPILE ;
 int FICL_PROMPT ;
 int assert (TYPE_4__*) ;
 int dictAbortDefinition (int *) ;
 int dictEmpty (TYPE_17__*,int ) ;
 int dictResetSearchOrder (int *) ;
 int ficlTextOut (TYPE_4__*,int ,int ) ;
 int setjmp (int ) ;
 int strlen (char*) ;
 int stub1 (TYPE_4__*) ;
 int vmInnerLoop (TYPE_4__*) ;
 int vmPopIP (TYPE_4__*) ;
 int vmPopTib (TYPE_4__*,int *) ;
 int vmPushIP (TYPE_4__*,TYPE_4__**) ;
 int vmPushTib (TYPE_4__*,char*,int ,int *) ;
 int vmQuit (TYPE_4__*) ;
 int vmReset (TYPE_4__*) ;

int ficlExecC(FICL_VM *pVM, char *pText, FICL_INT size)
{
    FICL_SYSTEM *pSys = pVM->pSys;
    FICL_DICT *dp = pSys->dp;

    int except;
    jmp_buf vmState;
    jmp_buf *oldState;
    TIB saveTib;

    assert(pVM);
    assert(pSys->pInterp[0]);

    if (size < 0)
        size = strlen(pText);

    vmPushTib(pVM, pText, size, &saveTib);




    oldState = pVM->pState;
    pVM->pState = &vmState;
    except = setjmp(vmState);

    switch (except)
    {
    case 0:
        if (pVM->fRestart)
        {
            pVM->runningWord->code(pVM);
            pVM->fRestart = 0;
        }
        else
        {
            vmPushIP(pVM, &(pSys->pInterp[0]));
        }

        vmInnerLoop(pVM);
        break;

    case 129:
        pVM->fRestart = 1;
        except = 131;
        break;

    case 131:
        vmPopIP(pVM);




        break;

    case 128:
    case 132:
    case 134:
        break;

    case 130:
        if (pVM->state == COMPILE)
        {
            dictAbortDefinition(dp);



        }
        vmQuit(pVM);
        break;

    case 133:
    case 136:
    case 135:
    default:
        if (pVM->state == COMPILE)
        {
            dictAbortDefinition(dp);



        }
        dictResetSearchOrder(dp);
        vmReset(pVM);
        break;
   }

    pVM->pState = oldState;
    vmPopTib(pVM, &saveTib);
    return (except);
}
