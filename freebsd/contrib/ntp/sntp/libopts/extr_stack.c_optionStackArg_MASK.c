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
typedef  int /*<<< orphan*/  tOptions ;
struct TYPE_8__ {int /*<<< orphan*/ * argString; } ;
struct TYPE_9__ {int fOptState; TYPE_3__* optCookie; TYPE_1__ optArg; } ;
typedef  TYPE_2__ tOptDesc ;
struct TYPE_10__ {int useCt; struct TYPE_10__** apzArgs; } ;
typedef  TYPE_3__ tArgList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int OPTST_RESET ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__**,int /*<<< orphan*/ ) ; 

void
FUNC5(tOptions * opts, tOptDesc * od)
{
    char * pz;

    if (FUNC2(opts, od))
        return;

    if ((od->fOptState & OPTST_RESET) != 0) {
        tArgList * arg_list = od->optCookie;
        int ix;
        if (arg_list == NULL)
            return;

        ix = arg_list->useCt;
        while (--ix >= 0)
            FUNC1(arg_list->apzArgs[ix]);
        FUNC1(arg_list);

    } else {
        if (od->optArg.argString == NULL)
            return;

        FUNC0(pz, od->optArg.argString, "stack arg");
        FUNC4(&(od->optCookie), FUNC3(pz));
    }
}