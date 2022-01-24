#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jmp_buf ;
struct TYPE_12__ {scalar_t__ rStack; scalar_t__ pStack; int /*<<< orphan*/ * pState; TYPE_1__* pSys; } ;
struct TYPE_11__ {TYPE_2__* pExitInner; } ;
typedef  int /*<<< orphan*/  FICL_WORD ;
typedef  TYPE_2__ FICL_VM ;
typedef  int /*<<< orphan*/  FICL_STACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  VM_INNEREXIT 128 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_2__**) ; 

__attribute__((used)) static void FUNC10(FICL_VM *pVM)
{
    int         except;
    jmp_buf     vmState;
    FICL_VM     VM;
    FICL_STACK  pStack;
    FICL_STACK  rStack;
    FICL_WORD   *pFW;

    FUNC1(pVM);
    FUNC1(pVM->pSys->pExitInner);
    

    /*
    ** Get xt.
    ** We need this *before* we save the stack pointer, or
    ** we'll have to pop one element out of the stack after
    ** an exception. I prefer to get done with it up front. :-)
    */
#if FICL_ROBUST > 1
    vmCheckStack(pVM, 1, 0);
#endif
    pFW = FUNC4(pVM->pStack);

    /* 
    ** Save vm's state -- a catch will not back out environmental
    ** changes.
    **
    ** We are *not* saving dictionary state, since it is
    ** global instead of per vm, and we are not saving
    ** stack contents, since we are not required to (and,
    ** thus, it would be useless). We save pVM, and pVM
    ** "stacks" (a structure containing general information
    ** about it, including the current stack pointer).
    */
    FUNC2((void*)&VM, (void*)pVM, sizeof(FICL_VM));
    FUNC2((void*)&pStack, (void*)pVM->pStack, sizeof(FICL_STACK));
    FUNC2((void*)&rStack, (void*)pVM->rStack, sizeof(FICL_STACK));

    /*
    ** Give pVM a jmp_buf
    */
    pVM->pState = &vmState;

    /*
    ** Safety net
    */
    except = FUNC3(vmState);

    switch (except)
    {
        /*
        ** Setup condition - push poison pill so that the VM throws
        ** VM_INNEREXIT if the XT terminates normally, then execute
        ** the XT
        */
    case 0:
        FUNC9(pVM, &(pVM->pSys->pExitInner));          /* Open mouth, insert emetic */
        FUNC6(pVM, pFW);
        FUNC7(pVM);
        break;

        /*
        ** Normal exit from XT - lose the poison pill, 
        ** restore old setjmp vector and push a zero. 
        */
    case VM_INNEREXIT:
        FUNC8(pVM);                   /* Gack - hurl poison pill */
        pVM->pState = VM.pState;        /* Restore just the setjmp vector */
        FUNC0(0);   /* Push 0 -- everything is ok */
        break;

        /*
        ** Some other exception got thrown - restore pre-existing VM state
        ** and push the exception code
        */
    default:
        /* Restore vm's state */
        FUNC2((void*)pVM, (void*)&VM, sizeof(FICL_VM));
        FUNC2((void*)pVM->pStack, (void*)&pStack, sizeof(FICL_STACK));
        FUNC2((void*)pVM->rStack, (void*)&rStack, sizeof(FICL_STACK));

        FUNC0(except);/* Push error */
        break;
    }
}