#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tOptions ;
struct TYPE_5__ {int* argString; int argBool; } ;
struct TYPE_6__ {int fOptState; TYPE_1__ optArg; } ;
typedef  TYPE_2__ tOptDesc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
#define  NUL 128 
 int OPTST_ALLOC_ARG ; 
 long FUNC2 (int*,char**,int /*<<< orphan*/ ) ; 

void
FUNC3(tOptions * opts, tOptDesc * od)
{
    char * pz;
    bool   res = true;

    if (FUNC1(opts, od))
        return;

    if (od->optArg.argString == NULL) {
        od->optArg.argBool = false;
        return;
    }

    switch (*(od->optArg.argString)) {
    case '0':
    {
        long  val = FUNC2(od->optArg.argString, &pz, 0);
        if ((val != 0) || (*pz != NUL))
            break;
        /* FALLTHROUGH */
    }
    case 'N':
    case 'n':
    case 'F':
    case 'f':
    case NUL:
        res = false;
        break;
    case '#':
        if (od->optArg.argString[1] != 'f')
            break;
        res = false;
    }

    if (od->fOptState & OPTST_ALLOC_ARG) {
        FUNC0(od->optArg.argString);
        od->fOptState &= ~OPTST_ALLOC_ARG;
    }
    od->optArg.argBool = res;
}