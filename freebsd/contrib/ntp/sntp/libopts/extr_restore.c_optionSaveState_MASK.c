#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ optCt; struct TYPE_7__* pOptDesc; struct TYPE_7__* pSavedState; } ;
typedef  TYPE_1__ tOptions ;
typedef  int /*<<< orphan*/  tOptDesc ;

/* Variables and functions */
 TYPE_1__* FUNC0 (size_t,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,size_t) ; 

void
FUNC3(tOptions * pOpts)
{
    tOptions * p = (tOptions *)pOpts->pSavedState;

    if (p == NULL) {
        size_t sz = sizeof(*pOpts)
            + ((size_t)pOpts->optCt * sizeof(tOptDesc));
        p = FUNC0(sz, "saved option state");

        pOpts->pSavedState = p;
    }

    FUNC2(p, pOpts, sizeof(*p));
    FUNC2(p + 1, pOpts->pOptDesc, (size_t)p->optCt * sizeof(tOptDesc));

    FUNC1(pOpts);
}