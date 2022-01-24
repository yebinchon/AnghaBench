#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_5__ {size_t numOfFqids; scalar_t__ fqidBase; int /*<<< orphan*/  h_Qm; int /*<<< orphan*/  shadowMode; struct TYPE_5__** p_Fqs; int /*<<< orphan*/  h_QmPortal; } ;
typedef  TYPE_1__ t_QmFqr ;
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 

t_Error  FUNC5(t_Handle h_QmFqr)
{
    t_QmFqr     *p_QmFqr    = (t_QmFqr *)h_QmFqr;
    uint32_t    i;

    if (!p_QmFqr)
        return FUNC0(E_INVALID_HANDLE);

    if (p_QmFqr->p_Fqs)
    {
        for (i=0;i<p_QmFqr->numOfFqids;i++)
            if (p_QmFqr->p_Fqs[i])
            {
                if (!p_QmFqr->shadowMode)
                    FUNC4(p_QmFqr->h_QmPortal, p_QmFqr->p_Fqs[i]);
                FUNC3(p_QmFqr->p_Fqs[i]);
            }
        FUNC2(p_QmFqr->p_Fqs);
    }

    if (!p_QmFqr->shadowMode && p_QmFqr->fqidBase)
        FUNC1(p_QmFqr->h_Qm, p_QmFqr->fqidBase);

    FUNC3(p_QmFqr);

    return E_OK;
}