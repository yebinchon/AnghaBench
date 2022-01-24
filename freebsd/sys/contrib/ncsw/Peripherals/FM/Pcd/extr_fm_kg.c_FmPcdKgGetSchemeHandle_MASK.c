#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/ * t_Handle ;
struct TYPE_5__ {TYPE_1__* p_FmPcdKg; } ;
typedef  TYPE_2__ t_FmPcd ;
struct TYPE_4__ {size_t numOfSchemes; int /*<<< orphan*/ * schemes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  E_NOT_IN_RANGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

t_Handle FUNC3(t_Handle h_FmPcd, uint8_t relativeSchemeId)
{
    t_FmPcd     *p_FmPcd = (t_FmPcd*)h_FmPcd;

    FUNC0(p_FmPcd);

    /* check that schemeId is in range */
    if (relativeSchemeId >= p_FmPcd->p_FmPcdKg->numOfSchemes)
    {
        FUNC2(MAJOR, E_NOT_IN_RANGE, ("relative-scheme-id %d!", relativeSchemeId));
        return NULL;
    }

    if (!FUNC1(&p_FmPcd->p_FmPcdKg->schemes[relativeSchemeId]))
        return NULL;

    return &p_FmPcd->p_FmPcdKg->schemes[relativeSchemeId];
}