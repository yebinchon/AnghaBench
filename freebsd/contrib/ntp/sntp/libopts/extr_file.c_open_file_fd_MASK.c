#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  file_flags; } ;
typedef  TYPE_2__ tuFileMode ;
struct TYPE_10__ {int /*<<< orphan*/  pzProgName; } ;
typedef  TYPE_3__ tOptions ;
struct TYPE_8__ {int argFd; int /*<<< orphan*/  argString; } ;
struct TYPE_11__ {int fOptState; TYPE_1__ optArg; int /*<<< orphan*/  optCookie; } ;
typedef  TYPE_4__ tOptDesc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int OPTST_ALLOC_ARG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(tOptions * pOpts, tOptDesc * pOD, tuFileMode mode)
{
    int fd = FUNC3(pOD->optArg.argString, mode.file_flags);
    if (fd < 0)
        FUNC2(pOpts->pzProgName, "open", pOD->optArg.argString);
        /* NOTREACHED */

    if ((pOD->fOptState & OPTST_ALLOC_ARG) != 0)
        pOD->optCookie = FUNC1(pOD->optArg.argString);
    else
        FUNC0(pOD->optCookie, pOD->optArg.argString, "file name");

    pOD->optArg.argFd = fd;
    pOD->fOptState &= ~OPTST_ALLOC_ARG;
}