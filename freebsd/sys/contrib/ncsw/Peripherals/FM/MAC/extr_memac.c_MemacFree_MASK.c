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
struct TYPE_5__ {struct TYPE_5__* p_MemacDriverParam; } ;
typedef  TYPE_1__ t_Memac ;
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static t_Error FUNC3(t_Handle h_Memac)
{
    t_Memac     *p_Memac = (t_Memac *)h_Memac;

    FUNC1(p_Memac, E_INVALID_HANDLE);

    if (p_Memac->p_MemacDriverParam)
    {
        /* Called after config */
        FUNC2(p_Memac->p_MemacDriverParam);
        p_Memac->p_MemacDriverParam = NULL;
    }
    else
        /* Called after init */
        FUNC0(p_Memac);

    FUNC2(p_Memac);

    return E_OK;
}