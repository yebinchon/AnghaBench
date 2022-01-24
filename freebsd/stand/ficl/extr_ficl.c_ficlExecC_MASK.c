#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_17__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jmp_buf ;
struct TYPE_24__ {TYPE_17__* localp; TYPE_4__** pInterp; int /*<<< orphan*/ * dp; } ;
struct TYPE_21__ {int /*<<< orphan*/  i; } ;
struct TYPE_23__ {int fRestart; int /*<<< orphan*/ * pState; int /*<<< orphan*/  state; TYPE_2__ sourceID; TYPE_1__* runningWord; TYPE_5__* pSys; } ;
struct TYPE_22__ {int /*<<< orphan*/  size; } ;
struct TYPE_20__ {int /*<<< orphan*/  (* code ) (TYPE_4__*) ;} ;
struct TYPE_19__ {TYPE_3__* pForthWords; } ;
typedef  int /*<<< orphan*/  TIB ;
typedef  TYPE_4__ FICL_VM ;
typedef  TYPE_5__ FICL_SYSTEM ;
typedef  int /*<<< orphan*/  FICL_INT ;
typedef  int /*<<< orphan*/  FICL_DICT ;

/* Variables and functions */
 int /*<<< orphan*/  COMPILE ; 
 int /*<<< orphan*/  FICL_PROMPT ; 
#define  VM_ABORT 136 
#define  VM_ABORTQ 135 
#define  VM_BREAK 134 
#define  VM_ERREXIT 133 
#define  VM_INNEREXIT 132 
#define  VM_OUTOFTEXT 131 
#define  VM_QUIT 130 
#define  VM_RESTART 129 
#define  VM_USEREXIT 128 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_17__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 

int FUNC15(FICL_VM *pVM, char *pText, FICL_INT size)
{
    FICL_SYSTEM *pSys = pVM->pSys;
    FICL_DICT   *dp   = pSys->dp;

    int        except;
    jmp_buf    vmState;
    jmp_buf   *oldState;
    TIB        saveTib;

    FUNC0(pVM);
    FUNC0(pSys->pInterp[0]);

    if (size < 0)
        size = FUNC6(pText);

    FUNC12(pVM, pText, size, &saveTib);

    /*
    ** Save and restore VM's jmp_buf to enable nested calls to ficlExec 
    */
    oldState = pVM->pState;
    pVM->pState = &vmState; /* This has to come before the setjmp! */
    except = FUNC5(vmState);

    switch (except)
    {
    case 0:
        if (pVM->fRestart)
        {
            pVM->runningWord->code(pVM);
            pVM->fRestart = 0;
        }
        else
        {   /* set VM up to interpret text */
            FUNC11(pVM, &(pSys->pInterp[0]));
        }

        FUNC8(pVM);
        break;

    case VM_RESTART:
        pVM->fRestart = 1;
        except = VM_OUTOFTEXT;
        break;

    case VM_OUTOFTEXT:
        FUNC9(pVM);
#ifdef TESTMAIN
        if ((pVM->state != COMPILE) && (pVM->sourceID.i == 0))
            ficlTextOut(pVM, FICL_PROMPT, 0);
#endif
        break;

    case VM_USEREXIT:
    case VM_INNEREXIT:
    case VM_BREAK:
        break;

    case VM_QUIT:
        if (pVM->state == COMPILE)
        {
            FUNC1(dp);
#if FICL_WANT_LOCALS
            dictEmpty(pSys->localp, pSys->localp->pForthWords->size);
#endif
        }
        FUNC13(pVM);
        break;

    case VM_ERREXIT:
    case VM_ABORT:
    case VM_ABORTQ:
    default:    /* user defined exit code?? */
        if (pVM->state == COMPILE)
        {
            FUNC1(dp);
#if FICL_WANT_LOCALS
            dictEmpty(pSys->localp, pSys->localp->pForthWords->size);
#endif
        }
        FUNC3(dp);
        FUNC14(pVM);
        break;
   }

    pVM->pState    = oldState;
    FUNC10(pVM, &saveTib);
    return (except);
}