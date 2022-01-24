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
struct TYPE_4__ {struct TYPE_4__* p_FmDriverParam; } ;
typedef  TYPE_1__ t_Fm ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

t_Error FUNC2(t_Handle h_Fm)
{
    t_Fm                *p_Fm = (t_Fm*)h_Fm;

    FUNC0(p_Fm, E_INVALID_HANDLE);
    FUNC0(p_Fm->p_FmDriverParam, E_INVALID_HANDLE);
FUNC1(p_Fm);

    return E_OK;
}