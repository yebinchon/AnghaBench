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
struct g_eli_metadata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct g_eli_metadata*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,struct g_eli_metadata*) ; 
 int /*<<< orphan*/  FUNC2 (struct gctl_req*,char*) ; 
 char* FUNC3 (struct gctl_req*,char*,int) ; 
 int FUNC4 (struct gctl_req*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void
FUNC6(struct gctl_req *req)
{
	struct g_eli_metadata md;
	const char *name;
	int i, nargs;

	nargs = FUNC4(req, "nargs");
	if (nargs < 1) {
		FUNC2(req, "Too few arguments.");
		return;
	}

	for (i = 0; i < nargs; i++) {
		name = FUNC3(req, "arg%d", i);
		if (FUNC1(NULL, name, &md) == -1) {
			FUNC2(req, "Not fully done.");
			continue;
		}
		FUNC5("Metadata on %s:\n", name);
		FUNC0(&md);
		FUNC5("\n");
	}
}