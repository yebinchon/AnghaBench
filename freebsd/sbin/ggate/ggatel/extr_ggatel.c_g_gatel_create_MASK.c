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
struct g_gate_ctl_create {int gctl_unit; int /*<<< orphan*/  gctl_info; scalar_t__ gctl_maxcount; int /*<<< orphan*/  gctl_flags; int /*<<< orphan*/  gctl_timeout; scalar_t__ gctl_sectorsize; int /*<<< orphan*/  gctl_mediasize; int /*<<< orphan*/  gctl_version; } ;
typedef  int /*<<< orphan*/  ggioc ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  G_GATE_CMD_CREATE ; 
 char* G_GATE_PROVIDER_NAME ; 
 int /*<<< orphan*/  G_GATE_VERSION ; 
 int O_DIRECT ; 
 int O_FSYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flags ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct g_gate_ctl_create*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct g_gate_ctl_create*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  path ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 scalar_t__ sectorsize ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  timeout ; 
 int unit ; 

__attribute__((used)) static void
FUNC10(void)
{
	struct g_gate_ctl_create ggioc;
	int fd;

	fd = FUNC7(path, FUNC3(flags) | O_DIRECT | O_FSYNC);
	if (fd == -1)
		FUNC0(EXIT_FAILURE, "Cannot open %s", path);
	FUNC6(&ggioc, 0, sizeof(ggioc));
	ggioc.gctl_version = G_GATE_VERSION;
	ggioc.gctl_unit = unit;
	ggioc.gctl_mediasize = FUNC2(fd);
	if (sectorsize == 0)
		sectorsize = FUNC4(fd);
	ggioc.gctl_sectorsize = sectorsize;
	ggioc.gctl_timeout = timeout;
	ggioc.gctl_flags = flags;
	ggioc.gctl_maxcount = 0;
	FUNC9(ggioc.gctl_info, path, sizeof(ggioc.gctl_info));
	FUNC1(G_GATE_CMD_CREATE, &ggioc);
	if (unit == -1)
		FUNC8("%s%u\n", G_GATE_PROVIDER_NAME, ggioc.gctl_unit);
	unit = ggioc.gctl_unit;
	FUNC5(fd);
}