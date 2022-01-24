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
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ cvmx_mgmt_port_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 TYPE_1__* cvmx_mgmt_port_state_ptr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

void FUNC6(int port, int size_without_fcs)
{
    cvmx_mgmt_port_state_t *state;

    if ((port < 0) || (port >= FUNC2()))
        return;

    state = cvmx_mgmt_port_state_ptr + port;

    FUNC3(&state->lock);
    FUNC5(FUNC0(port), size_without_fcs);
    FUNC5(FUNC1(port), (size_without_fcs+7) & 0xfff8);
    FUNC4(&state->lock);
}