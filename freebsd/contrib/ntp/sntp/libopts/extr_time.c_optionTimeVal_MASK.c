#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_10__ {int fOptSet; int /*<<< orphan*/  (* pUsageProc ) (TYPE_2__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  pzProgName; } ;
typedef  TYPE_2__ tOptions ;
struct TYPE_9__ {long argInt; int /*<<< orphan*/  argString; } ;
struct TYPE_11__ {int fOptState; TYPE_1__ optArg; } ;
typedef  TYPE_3__ tOptDesc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BAD_TIME ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_3__*) ; 
 int OPTPROC_ERRSTOP ; 
 int OPTST_ALLOC_ARG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 char* zNotDuration ; 

void
FUNC5(tOptions * opts, tOptDesc * od)
{
    time_t val;

    if (FUNC1(opts, od))
        return;

    val = FUNC3(od->optArg.argString);
    if (val == BAD_TIME) {
        FUNC2(stderr, zNotDuration, opts->pzProgName, od->optArg.argString);
        if ((opts->fOptSet & OPTPROC_ERRSTOP) != 0)
            (*(opts->pUsageProc))(opts, EXIT_FAILURE);
    }

    if (od->fOptState & OPTST_ALLOC_ARG) {
        FUNC0(od->optArg.argString);
        od->fOptState &= ~OPTST_ALLOC_ARG;
    }

    od->optArg.argInt = (long)val;
}