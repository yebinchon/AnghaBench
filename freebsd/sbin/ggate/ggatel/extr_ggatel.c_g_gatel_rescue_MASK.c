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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  G_GATE_CMD_CANCEL ; 
 int /*<<< orphan*/  G_GATE_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flags ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct g_gate_ctl_cancel*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  path ; 
 int /*<<< orphan*/  unit ; 

__attribute__((used)) static void
FUNC5(void)
{
	struct g_gate_ctl_cancel ggioc;
	int fd;

	fd = FUNC4(path, FUNC2(flags));
	if (fd == -1)
		FUNC0(EXIT_FAILURE, "Cannot open %s", path);

	ggioc.gctl_version = G_GATE_VERSION;
	ggioc.gctl_unit = unit;
	ggioc.gctl_seq = 0;
	FUNC1(G_GATE_CMD_CANCEL, &ggioc);

	FUNC3(fd);
}