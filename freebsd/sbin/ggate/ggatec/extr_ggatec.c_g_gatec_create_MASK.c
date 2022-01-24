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
struct g_gate_ctl_create {int gctl_unit; int /*<<< orphan*/  gctl_info; int /*<<< orphan*/  gctl_timeout; int /*<<< orphan*/  gctl_maxcount; int /*<<< orphan*/  gctl_flags; int /*<<< orphan*/  gctl_sectorsize; int /*<<< orphan*/  gctl_mediasize; int /*<<< orphan*/  gctl_version; } ;
typedef  int /*<<< orphan*/  ggioc ;

/* Variables and functions */
 int /*<<< orphan*/  G_GATE_CMD_CREATE ; 
 char* G_GATE_PROVIDER_NAME ; 
 int /*<<< orphan*/  G_GATE_VERSION ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flags ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct g_gate_ctl_create*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* host ; 
 int /*<<< orphan*/  mediasize ; 
 int /*<<< orphan*/  FUNC5 (struct g_gate_ctl_create*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* path ; 
 int port ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  queue_size ; 
 int /*<<< orphan*/  sectorsize ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,char*,int,char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timeout ; 
 int unit ; 

__attribute__((used)) static void
FUNC10(void)
{
	struct g_gate_ctl_create ggioc;

	if (!FUNC3())
		FUNC2("Cannot connect: %s.", FUNC9(errno));

	/*
	 * Ok, got both sockets, time to create provider.
	 */
	FUNC5(&ggioc, 0, sizeof(ggioc));
	ggioc.gctl_version = G_GATE_VERSION;
	ggioc.gctl_mediasize = mediasize;
	ggioc.gctl_sectorsize = sectorsize;
	ggioc.gctl_flags = flags;
	ggioc.gctl_maxcount = queue_size;
	ggioc.gctl_timeout = timeout;
	ggioc.gctl_unit = unit;
	FUNC8(ggioc.gctl_info, sizeof(ggioc.gctl_info), "%s:%u %s", host,
	    port, path);
	FUNC1(G_GATE_CMD_CREATE, &ggioc);
	if (unit == -1) {
		FUNC7("%s%u\n", G_GATE_PROVIDER_NAME, ggioc.gctl_unit);
		FUNC0(stdout);
	}
	unit = ggioc.gctl_unit;

	FUNC6();
	FUNC4();
}