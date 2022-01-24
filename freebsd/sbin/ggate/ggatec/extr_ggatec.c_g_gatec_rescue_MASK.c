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
struct g_gate_ctl_cancel {scalar_t__ gctl_seq; int /*<<< orphan*/  gctl_unit; int /*<<< orphan*/  gctl_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  G_GATE_CMD_CANCEL ; 
 int /*<<< orphan*/  G_GATE_VERSION ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct g_gate_ctl_cancel*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  unit ; 

__attribute__((used)) static void
FUNC6(void)
{
	struct g_gate_ctl_cancel ggioc;

	if (!FUNC2())
		FUNC1("Cannot connect: %s.", FUNC5(errno));

	ggioc.gctl_version = G_GATE_VERSION;
	ggioc.gctl_unit = unit;
	ggioc.gctl_seq = 0;
	FUNC0(G_GATE_CMD_CANCEL, &ggioc);

	FUNC4();
	FUNC3();
}