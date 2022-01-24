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
struct gctl_req {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gctl_req*,char*) ; 
 char* FUNC3 (struct gctl_req*,char*,int) ; 
 int FUNC4 (struct gctl_req*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,...) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct gctl_req *req)
{
	const char *name;
	int i, nargs, fd;

	nargs = FUNC4(req, "nargs");
	if (nargs < 1) {
		FUNC2(req, "Too few arguments.");
		return;
	}

	for (i = 0; i < nargs; i++) {
		name = FUNC3(req, "arg%d", i);
		fd = FUNC1(name, 1);
		if (fd == -1) {
			FUNC5("Can't refresh metadata from %s: %s.\n",
			    name, FUNC6(errno));
		} else {
			FUNC5("Metadata from %s refreshed.\n", name);
			(void)FUNC0(fd);
		}
	}
}