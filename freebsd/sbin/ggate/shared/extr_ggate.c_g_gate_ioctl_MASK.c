#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  G_GATE_CTL_NAME ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  g_gate_devfd ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(unsigned long req, void *data)
{

	if (FUNC2(g_gate_devfd, req, data) == -1) {
		FUNC0("%s: ioctl(/dev/%s): %s.", FUNC1(),
		    G_GATE_CTL_NAME, FUNC3(errno));
	}
}