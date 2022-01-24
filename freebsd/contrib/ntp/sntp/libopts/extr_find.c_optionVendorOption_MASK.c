#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int fOptSet; int /*<<< orphan*/  (* pUsageProc ) (TYPE_2__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  pzProgName; } ;
typedef  TYPE_2__ tOptions ;
struct TYPE_18__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_3__ tOptState ;
struct TYPE_16__ {char* argString; } ;
struct TYPE_19__ {int fOptState; TYPE_1__ optArg; } ;
typedef  TYPE_4__ tOptDesc ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 TYPE_2__* OPTPROC_EMIT_LIMIT ; 
 int OPTPROC_IMMEDIATE ; 
 int OPTPROC_VENDOR_OPT ; 
 TYPE_3__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPTST_DEFINED ; 
 int OPTST_RESET ; 
 int /*<<< orphan*/  PRESET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char const*,TYPE_3__*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 char* zIllVendOptStr ; 

void
FUNC11(tOptions * pOpts, tOptDesc * pOD)
{
    tOptState     opt_st   = FUNC3(PRESET);
    char const *  vopt_str = pOD->optArg.argString;

    if (pOpts <= OPTPROC_EMIT_LIMIT)
        return;

    if ((pOD->fOptState & OPTST_RESET) != 0)
        return;

    if ((pOD->fOptState & OPTPROC_IMMEDIATE) == 0)
        opt_st.flags = OPTST_DEFINED;

    if (  ((pOpts->fOptSet & OPTPROC_VENDOR_OPT) == 0)
       || ! FUNC4(FUNC9(pOpts, vopt_str, &opt_st))
       || ! FUNC4(FUNC7(pOpts, &opt_st)) )
    {
        FUNC6(stderr, zIllVendOptStr, pOpts->pzProgName, vopt_str);
        (*pOpts->pUsageProc)(pOpts, EXIT_FAILURE);
        /* NOTREACHED */
        FUNC5(EXIT_FAILURE); /* to be certain */
    }

    /*
     *  See if we are in immediate handling state.
     */
    if (pOpts->fOptSet & OPTPROC_IMMEDIATE) {
        /*
         *  See if the enclosed option is okay with that state.
         */
        if (FUNC0(opt_st.flags))
            (void)FUNC8(pOpts, &opt_st);

    } else {
        /*
         *  non-immediate direction.
         *  See if the enclosed option is okay with that state.
         */
        if (FUNC1(opt_st.flags) || FUNC2(opt_st.flags))
            (void)FUNC8(pOpts, &opt_st);
    }
}