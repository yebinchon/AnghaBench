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
struct TYPE_10__ {int fOptSet; int /*<<< orphan*/  pzProgName; } ;
typedef  TYPE_2__ tOptions ;
struct TYPE_9__ {int /*<<< orphan*/  argString; } ;
struct TYPE_11__ {int fOptState; TYPE_1__ optArg; } ;
typedef  TYPE_3__ tOptDesc ;
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIRECTION_CALLED ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  EINVAL ; 
 TYPE_2__* OPTPROC_EMIT_LIMIT ; 
 int OPTPROC_ERRSTOP ; 
 int OPTST_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct stat*) ; 

void
FUNC5(tOptions * opts, tOptDesc * odesc)
{
    struct stat sb;

    if (opts <= OPTPROC_EMIT_LIMIT)
        return;

    /*
     *  IF the option is not being disabled, THEN load the file.  There must
     *  be a file.  (If it is being disabled, then the disablement processing
     *  already took place.  It must be done to suppress preloading of ini/rc
     *  files.)
     */
    if (  FUNC0(odesc)
       || ((odesc->fOptState & OPTST_RESET) != 0))
        return;

    if (FUNC4(odesc->optArg.argString, &sb) != 0) {
        if ((opts->fOptSet & OPTPROC_ERRSTOP) == 0)
            return;

        FUNC3(opts->pzProgName, "stat", odesc->optArg.argString);
        /* NOT REACHED */
    }

    if (! FUNC1(sb.st_mode)) {
        if ((opts->fOptSet & OPTPROC_ERRSTOP) == 0)
            return;
        errno = EINVAL;
        FUNC3(opts->pzProgName, "stat", odesc->optArg.argString);
        /* NOT REACHED */
    }

    FUNC2(opts, odesc->optArg.argString, DIRECTION_CALLED);
}