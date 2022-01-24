#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_FmPortRsrc ;
struct TYPE_3__ {int /*<<< orphan*/  setNumOfTasks; struct TYPE_3__* p_FmPortDriverParam; int /*<<< orphan*/  tasks; } ;
typedef  TYPE_1__ t_FmPort ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

t_Error FUNC2(t_Handle h_FmPort, t_FmPortRsrc *p_NumOfTasks)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;

    FUNC0(p_FmPort, E_INVALID_HANDLE);
    FUNC0(p_FmPort->p_FmPortDriverParam, E_INVALID_HANDLE);

    FUNC1(&p_FmPort->tasks, p_NumOfTasks, sizeof(t_FmPortRsrc));
    p_FmPort->p_FmPortDriverParam->setNumOfTasks = TRUE;
    return E_OK;
}