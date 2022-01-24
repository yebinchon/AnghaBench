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
struct TYPE_5__ {scalar_t__ guestId; scalar_t__ errIrq; struct TYPE_5__* p_QmDriverParams; int /*<<< orphan*/  moduleName; scalar_t__ lock; } ;
typedef  TYPE_1__ t_Qm ;
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ NCSW_MASTER_ID ; 
 scalar_t__ NO_IRQ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

t_Error FUNC7(t_Handle h_Qm)
{
    t_Qm        *p_Qm = (t_Qm *)h_Qm;

    FUNC1(p_Qm, E_INVALID_HANDLE);

    if (p_Qm->lock)
        FUNC5(p_Qm->lock);

    if (p_Qm->guestId == NCSW_MASTER_ID)
    {
        FUNC6(p_Qm->moduleName);
        if (p_Qm->errIrq  != NO_IRQ)
        {
            FUNC2(p_Qm->errIrq);
            FUNC4(p_Qm->errIrq);
        }
    }
    FUNC0(p_Qm);

    if (p_Qm->p_QmDriverParams)
        FUNC3(p_Qm->p_QmDriverParams);

    FUNC3(p_Qm);

    return E_OK;
}