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
 int /*<<< orphan*/  G_MIRROR_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gctl_req*,char*) ; 
 char* FUNC3 (struct gctl_req*,char*,int) ; 
 int FUNC4 (struct gctl_req*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (int) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC7(struct gctl_req *req)
{
	const char *name;
	int error, i, nargs;

	nargs = FUNC4(req, "nargs");
	if (nargs < 1) {
		FUNC2(req, "Too few arguments.");
		return;
	}

	for (i = 0; i < nargs; i++) {
		name = FUNC3(req, "arg%d", i);
		error = FUNC1(name, G_MIRROR_MAGIC);
		if (error != 0) {
			FUNC0(stderr, "Can't clear metadata on %s: %s.\n",
			    name, FUNC6(error));
			FUNC2(req, "Not fully done.");
			continue;
		}
		if (verbose)
			FUNC5("Metadata cleared on %s.\n", name);
	}
}