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
 unsigned int G_FLAG_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC1 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC2 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC3 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC5 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC6 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC7 (struct gctl_req*) ; 
 int FUNC8 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC9 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC10 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC11 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC12 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC13 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC14 (struct gctl_req*,char*,char const*) ; 
 char* FUNC15 (struct gctl_req*,char*) ; 
 scalar_t__ FUNC16 (char const*,char*) ; 
 int verbose ; 

__attribute__((used)) static void
FUNC17(struct gctl_req *req, unsigned int flags)
{
	const char *name;

	if (FUNC8(req) == -1)
		return;

	if ((flags & G_FLAG_VERBOSE) != 0)
		verbose = 1;

	name = FUNC15(req, "verb");
	if (name == NULL) {
		FUNC14(req, "No '%s' argument.", "verb");
		return;
	}
	if (FUNC16(name, "init") == 0 || FUNC16(name, "label") == 0)
		FUNC6(req);
	else if (FUNC16(name, "attach") == 0)
		FUNC0(req);
	else if (FUNC16(name, "configure") == 0)
		FUNC3(req);
	else if (FUNC16(name, "setkey") == 0)
		FUNC12(req);
	else if (FUNC16(name, "delkey") == 0)
		FUNC4(req);
	else if (FUNC16(name, "resume") == 0)
		FUNC11(req);
	else if (FUNC16(name, "kill") == 0)
		FUNC7(req);
	else if (FUNC16(name, "backup") == 0)
		FUNC1(req);
	else if (FUNC16(name, "restore") == 0)
		FUNC10(req);
	else if (FUNC16(name, "resize") == 0)
		FUNC9(req);
	else if (FUNC16(name, "version") == 0)
		FUNC13(req);
	else if (FUNC16(name, "dump") == 0)
		FUNC5(req);
	else if (FUNC16(name, "clear") == 0)
		FUNC2(req);
	else
		FUNC14(req, "Unknown command: %s.", name);
}