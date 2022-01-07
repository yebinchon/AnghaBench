
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_21__ ;
typedef struct TYPE_27__ TYPE_1__ ;


struct TYPE_29__ {char* cp; int index; char* end; } ;
struct TYPE_32__ {char* pad; TYPE_4__* runningWord; TYPE_2__ tib; int pStack; TYPE_4__** ip; scalar_t__ fRestart; TYPE_21__* pSys; } ;
struct TYPE_31__ {char* nName; int name; } ;
struct TYPE_30__ {int count; int cp; } ;
struct TYPE_27__ {TYPE_4__* origXT; TYPE_4__* address; } ;
struct TYPE_28__ {TYPE_1__ bpStep; } ;
typedef TYPE_3__ STRINGINFO ;
typedef TYPE_4__** IPTYPE ;
typedef TYPE_4__ FICL_WORD ;
typedef TYPE_6__ FICL_VM ;
typedef int CELL ;


 int FICL_PROMPT ;
 int VM_ABORT ;
 int VM_OUTOFTEXT ;
 int VM_RESTART ;
 int assert (TYPE_4__*) ;
 int debugPrompt (TYPE_6__*) ;
 int ficlExecC (TYPE_6__*,char*,int) ;
 int ficlExecXT (TYPE_6__*,TYPE_4__*) ;
 TYPE_4__* ficlLookup (TYPE_21__*,char*) ;
 int ficlTextOut (TYPE_6__*,int ,int ) ;
 TYPE_4__* findEnclosingWord (TYPE_6__*,int *) ;
 scalar_t__ isPrimitive (TYPE_4__*) ;
 int seeXT (TYPE_6__*) ;
 int sprintf (char*,char*,char*,int ) ;
 int stackPushPtr (int ,TYPE_4__*) ;
 int stepIn (TYPE_6__*) ;
 int stepOver (TYPE_6__*) ;
 int strcat (char*,char*) ;
 int strincmp (int ,char*,int ) ;
 TYPE_3__ vmGetWord (TYPE_6__*) ;
 int vmTextOut (TYPE_6__*,char*,int) ;
 int vmThrow (TYPE_6__*,int) ;

void stepBreak(FICL_VM *pVM)
{
    STRINGINFO si;
    FICL_WORD *pFW;
    FICL_WORD *pOnStep;

    if (!pVM->fRestart)
    {
        assert(pVM->pSys->bpStep.address);
        assert(pVM->pSys->bpStep.origXT);





        pVM->ip = (IPTYPE)(pVM->pSys->bpStep.address);
        *pVM->ip = pVM->pSys->bpStep.origXT;




        pOnStep = ficlLookup(pVM->pSys, "on-step");
        if (pOnStep)
            ficlExecXT(pVM, pOnStep);




        pFW = pVM->pSys->bpStep.origXT;
        sprintf(pVM->pad, "next: %.*s", pFW->nName, pFW->name);







        vmTextOut(pVM, pVM->pad, 1);
        debugPrompt(pVM);
    }
    else
    {
        pVM->fRestart = 0;
    }

    si = vmGetWord(pVM);

    if (!strincmp(si.cp, "i", si.count))
    {
        stepIn(pVM);
    }
    else if (!strincmp(si.cp, "g", si.count))
    {
        return;
    }
    else if (!strincmp(si.cp, "l", si.count))
    {
        FICL_WORD *xt;
        xt = findEnclosingWord(pVM, (CELL *)(pVM->ip));
        if (xt)
        {
            stackPushPtr(pVM->pStack, xt);
            seeXT(pVM);
        }
        else
        {
            vmTextOut(pVM, "sorry - can't do that", 1);
        }
        vmThrow(pVM, VM_RESTART);
    }
    else if (!strincmp(si.cp, "o", si.count))
    {
        stepOver(pVM);
    }
    else if (!strincmp(si.cp, "q", si.count))
    {
        ficlTextOut(pVM, FICL_PROMPT, 0);
        vmThrow(pVM, VM_ABORT);
    }
    else if (!strincmp(si.cp, "x", si.count))
    {



        int ret;
        char *cp = pVM->tib.cp + pVM->tib.index;
        int count = pVM->tib.end - cp;
        FICL_WORD *oldRun = pVM->runningWord;

        ret = ficlExecC(pVM, cp, count);

        if (ret == VM_OUTOFTEXT)
        {
            ret = VM_RESTART;
            pVM->runningWord = oldRun;
            vmTextOut(pVM, "", 1);
        }

        vmThrow(pVM, ret);
    }
    else
    {
        vmTextOut(pVM, "i -- step In", 1);
        vmTextOut(pVM, "o -- step Over", 1);
        vmTextOut(pVM, "g -- Go (execute to completion)", 1);
        vmTextOut(pVM, "l -- List source code", 1);
        vmTextOut(pVM, "q -- Quit (stop debugging and abort)", 1);
        vmTextOut(pVM, "x -- eXecute the rest of the line as ficl words", 1);
        debugPrompt(pVM);
        vmThrow(pVM, VM_RESTART);
    }

    return;
}
