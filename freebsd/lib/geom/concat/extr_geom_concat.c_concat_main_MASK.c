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
 int /*<<< orphan*/  FUNC3 (struct gctl_req*,char*,char const*) ; 
 char* FUNC4 (struct gctl_req*,char*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int verbose ; 

__attribute__((used)) static void
FUNC6(struct gctl_req *req, unsigned flags)
{
	const char *name;

	if ((flags & G_FLAG_VERBOSE) != 0)
		verbose = 1;

	name = FUNC4(req, "verb");
	if (name == NULL) {
		FUNC3(req, "No '%s' argument.", "verb");
		return;
	}
	if (FUNC5(name, "label") == 0)
		FUNC2(req);
	else if (FUNC5(name, "clear") == 0)
		FUNC0(req);
	else if (FUNC5(name, "dump") == 0)
		FUNC1(req);
	else
		FUNC3(req, "Unknown command: %s.", name);
}