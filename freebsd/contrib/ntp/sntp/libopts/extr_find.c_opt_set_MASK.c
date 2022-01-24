#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tSuccess ;
struct TYPE_8__ {int fOptSet; int /*<<< orphan*/  (* pUsageProc ) (TYPE_1__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  pzProgName; TYPE_3__* pOptDesc; } ;
typedef  TYPE_1__ tOptions ;
struct TYPE_9__ {char* pzOptArg; int /*<<< orphan*/  optType; TYPE_3__* pOD; int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ tOptState ;
struct TYPE_10__ {int /*<<< orphan*/ * pzText; int /*<<< orphan*/  pz_Name; } ;
typedef  TYPE_3__ tOptDesc ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  NL ; 
 int OPTPROC_ERRSTOP ; 
 int /*<<< orphan*/  OPTST_DISABLED ; 
 char* SET_OFF_FMT ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  SUCCESS ; 
 int /*<<< orphan*/  TOPT_LONG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* zDisabledErr ; 

__attribute__((used)) static tSuccess
FUNC5(tOptions * opts, char * arg, int idx, bool disable, tOptState * st)
{
    tOptDesc * pOD = opts->pOptDesc + idx;

    if (FUNC0(pOD)) {
        if ((opts->fOptSet & OPTPROC_ERRSTOP) == 0)
            return FAILURE;

        FUNC2(stderr, zDisabledErr, &opts->pzProgName, pOD->pz_Name);
        if (pOD->pzText != NULL)
            FUNC2(stderr, SET_OFF_FMT, pOD->pzText);
        FUNC3(NL, stderr);
        (*opts->pUsageProc)(opts, EXIT_FAILURE);
        /* NOTREACHED */
        FUNC1(EXIT_FAILURE); /* to be certain */
    }

    /*
     *  IF we found a disablement name,
     *  THEN set the bit in the callers' flag word
     */
    if (disable)
        st->flags |= OPTST_DISABLED;

    st->pOD      = pOD;
    st->pzOptArg = arg;
    st->optType  = TOPT_LONG;

    return SUCCESS;
}