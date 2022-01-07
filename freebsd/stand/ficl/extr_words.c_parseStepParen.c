
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int pStack; TYPE_2__* runningWord; } ;
struct TYPE_8__ {TYPE_1__* param; } ;
struct TYPE_7__ {int fn; } ;
typedef int STRINGINFO ;
typedef TYPE_2__ FICL_WORD ;
typedef TYPE_3__ FICL_VM ;
typedef int (* FICL_PARSE_STEP ) (TYPE_3__*,int ) ;


 int PUSHINT (int ) ;
 int SI_SETLEN (int ,int ) ;
 int SI_SETPTR (int ,int ) ;
 int stackPopINT (int ) ;
 int stackPopPtr (int ) ;
 int stub1 (TYPE_3__*,int ) ;

void parseStepParen(FICL_VM *pVM)
{
    STRINGINFO si;
    FICL_WORD *pFW = pVM->runningWord;
    FICL_PARSE_STEP pStep = (FICL_PARSE_STEP)(pFW->param->fn);

    SI_SETLEN(si, stackPopINT(pVM->pStack));
    SI_SETPTR(si, stackPopPtr(pVM->pStack));

    PUSHINT((*pStep)(pVM, si));

    return;
}
