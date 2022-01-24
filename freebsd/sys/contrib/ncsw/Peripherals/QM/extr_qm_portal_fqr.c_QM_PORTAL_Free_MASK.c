#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ cpu; } ;
struct TYPE_7__ {struct TYPE_7__* p_LowQmPortal; struct TYPE_7__* p_QmPortalDriverParams; scalar_t__ bind_lock; struct TYPE_7__* p_NullCB; TYPE_1__ config; int /*<<< orphan*/  h_Qm; } ;
typedef  TYPE_2__ t_QmPortal ;
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_Error ;
typedef  int /*<<< orphan*/  e_DpaaSwPortal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

t_Error FUNC6(t_Handle h_QmPortal)
{
    t_QmPortal  *p_QmPortal = (t_QmPortal *)h_QmPortal;

    if (!p_QmPortal)
       return FUNC1(E_INVALID_HANDLE);

    FUNC0(p_QmPortal->p_LowQmPortal);
    FUNC2(p_QmPortal->h_Qm, NULL, (e_DpaaSwPortal)p_QmPortal->p_LowQmPortal->config.cpu);
    FUNC5(p_QmPortal);
    if (p_QmPortal->p_NullCB)
        FUNC3(p_QmPortal->p_NullCB);

    if (p_QmPortal->p_LowQmPortal->bind_lock)
        FUNC4(p_QmPortal->p_LowQmPortal->bind_lock);
    if(p_QmPortal->p_QmPortalDriverParams)
        FUNC3(p_QmPortal->p_QmPortalDriverParams);
    FUNC3(p_QmPortal->p_LowQmPortal);
    FUNC3(p_QmPortal);

    return E_OK;
}