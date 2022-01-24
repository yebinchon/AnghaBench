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
struct TYPE_7__ {char* pzProgName; char* pzPROGNAME; struct TYPE_7__* pSavedState; scalar_t__ optCt; struct TYPE_7__* pOptDesc; } ;
typedef  TYPE_1__ tOptions ;
typedef  int /*<<< orphan*/  tOptDesc ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* zNil ; 
 char* zNoState ; 

void
FUNC5(tOptions * pOpts)
{
    tOptions * p = (tOptions *)pOpts->pSavedState;

    if (p == NULL) {
        char const * pzName = pOpts->pzProgName;
        if (pzName == NULL) {
            pzName = pOpts->pzPROGNAME;
            if (pzName == NULL)
                pzName = zNil;
        }
        FUNC1(stderr, zNoState, pzName);
        FUNC4(EXIT_FAILURE);
    }

    pOpts->pSavedState = NULL;
    FUNC3(pOpts);

    FUNC2(pOpts, p, sizeof(*p));
    FUNC2(pOpts->pOptDesc, p+1, (size_t)p->optCt * sizeof(tOptDesc));
    pOpts->pSavedState = p;

    FUNC0(pOpts);
}