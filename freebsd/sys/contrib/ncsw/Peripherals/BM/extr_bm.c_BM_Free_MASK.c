#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_Error ;
struct TYPE_4__ {scalar_t__ guestId; scalar_t__ errIrq; struct TYPE_4__* p_BmDriverParams; int /*<<< orphan*/  moduleName; } ;
typedef  TYPE_1__ t_Bm ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ NCSW_MASTER_ID ; 
 scalar_t__ NO_IRQ ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

t_Error FUNC6(t_Handle h_Bm)
{
    t_Bm    *p_Bm = (t_Bm *)h_Bm;

    if (!p_Bm)
       return FUNC0(E_INVALID_HANDLE);

    if (p_Bm->guestId == NCSW_MASTER_ID)
    {
        FUNC5(p_Bm->moduleName);
        if (p_Bm->errIrq  != NO_IRQ)
        {
            FUNC2(p_Bm->errIrq);
            FUNC4(p_Bm->errIrq);
        }
    }
    FUNC1(p_Bm);

    if(p_Bm->p_BmDriverParams)
        FUNC3(p_Bm->p_BmDriverParams);

    FUNC3(p_Bm);
    return E_OK;
}