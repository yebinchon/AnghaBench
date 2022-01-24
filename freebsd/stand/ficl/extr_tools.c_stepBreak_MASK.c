#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_21__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct TYPE_29__ {char* cp; int index; char* end; } ;
struct TYPE_32__ {char* pad; TYPE_4__* runningWord; TYPE_2__ tib; int /*<<< orphan*/  pStack; TYPE_4__** ip; scalar_t__ fRestart; TYPE_21__* pSys; } ;
struct TYPE_31__ {char* nName; int /*<<< orphan*/  name; } ;
struct TYPE_30__ {int /*<<< orphan*/  count; int /*<<< orphan*/  cp; } ;
struct TYPE_27__ {TYPE_4__* origXT; TYPE_4__* address; } ;
struct TYPE_28__ {TYPE_1__ bpStep; } ;
typedef  TYPE_3__ STRINGINFO ;
typedef  TYPE_4__** IPTYPE ;
typedef  TYPE_4__ FICL_WORD ;
typedef  TYPE_6__ FICL_VM ;
typedef  int /*<<< orphan*/  CELL ;

/* Variables and functions */
 int /*<<< orphan*/  FICL_PROMPT ; 
 int VM_ABORT ; 
 int VM_OUTOFTEXT ; 
 int VM_RESTART ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int FUNC2 (TYPE_6__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,TYPE_4__*) ; 
 TYPE_4__* FUNC4 (TYPE_21__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__ FUNC15 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_6__*,int) ; 

void FUNC18(FICL_VM *pVM)
{
    STRINGINFO si;
    FICL_WORD *pFW;
    FICL_WORD *pOnStep;

    if (!pVM->fRestart)
    {
        FUNC0(pVM->pSys->bpStep.address);
        FUNC0(pVM->pSys->bpStep.origXT);
        /*
        ** Clear the breakpoint that caused me to run
        ** Restore the original instruction at the breakpoint, 
        ** and restore the IP
        */
        pVM->ip = (IPTYPE)(pVM->pSys->bpStep.address);
        *pVM->ip = pVM->pSys->bpStep.origXT;

        /*
        ** If there's an onStep, do it
        */
        pOnStep = FUNC4(pVM->pSys, "on-step");
        if (pOnStep)
            FUNC3(pVM, pOnStep);

        /*
        ** Print the name of the next instruction
        */
        pFW = pVM->pSys->bpStep.origXT;
        FUNC9(pVM->pad, "next: %.*s", pFW->nName, pFW->name);
#if 0
        if (isPrimitive(pFW))
        {
            strcat(pVM->pad, " ( primitive )");
        }
#endif

        FUNC16(pVM, pVM->pad, 1);
        FUNC1(pVM);
    }
    else
    {
        pVM->fRestart = 0;
    }

    si = FUNC15(pVM);

    if      (!FUNC14(si.cp, "i", si.count))
    {
        FUNC11(pVM);
    }
    else if (!FUNC14(si.cp, "g", si.count))
    {
        return;
    }
    else if (!FUNC14(si.cp, "l", si.count))
    {
        FICL_WORD *xt;
        xt = FUNC6(pVM, (CELL *)(pVM->ip));
        if (xt)
        {
            FUNC10(pVM->pStack, xt);
            FUNC8(pVM);
        }
        else
        {
            FUNC16(pVM, "sorry - can't do that", 1);
        }
        FUNC17(pVM, VM_RESTART);
    }
    else if (!FUNC14(si.cp, "o", si.count))
    {
        FUNC12(pVM);
    }
    else if (!FUNC14(si.cp, "q", si.count))
    {
        FUNC5(pVM, FICL_PROMPT, 0);
        FUNC17(pVM, VM_ABORT);
    }
    else if (!FUNC14(si.cp, "x", si.count))
    {
        /*
        ** Take whatever's left in the TIB and feed it to a subordinate ficlExec
        */ 
        int ret;
        char *cp = pVM->tib.cp + pVM->tib.index;
        int count = pVM->tib.end - cp; 
        FICL_WORD *oldRun = pVM->runningWord;

        ret = FUNC2(pVM, cp, count);

        if (ret == VM_OUTOFTEXT)
        {
            ret = VM_RESTART;
            pVM->runningWord = oldRun;
            FUNC16(pVM, "", 1);
        }

        FUNC17(pVM, ret);
    }
    else
    {
        FUNC16(pVM, "i -- step In", 1);
        FUNC16(pVM, "o -- step Over", 1);
        FUNC16(pVM, "g -- Go (execute to completion)", 1);
        FUNC16(pVM, "l -- List source code", 1);
        FUNC16(pVM, "q -- Quit (stop debugging and abort)", 1);
        FUNC16(pVM, "x -- eXecute the rest of the line as ficl words", 1);
        FUNC1(pVM);
        FUNC17(pVM, VM_RESTART);
    }

    return;
}