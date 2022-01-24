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
typedef  scalar_t__ t_Handle ;
struct TYPE_6__ {TYPE_1__* p_FmStateStruct; } ;
typedef  TYPE_2__ t_Fm ;
typedef  int /*<<< orphan*/  t_Error ;
struct TYPE_5__ {scalar_t__ ramsEccOwners; int /*<<< orphan*/  internalCall; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

t_Error FUNC3(t_Handle h_Fm)
{
    t_Fm        *p_Fm = (t_Fm*)h_Fm;

    FUNC2(p_Fm, E_INVALID_HANDLE);

    FUNC0(p_Fm->p_FmStateStruct->ramsEccOwners);
    p_Fm->p_FmStateStruct->ramsEccOwners--;

    if (p_Fm->p_FmStateStruct->ramsEccOwners==0)
    {
        p_Fm->p_FmStateStruct->internalCall = TRUE;
        return FUNC1(p_Fm);
    }

    return E_OK;
}