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
struct entry {scalar_t__ e_type; int /*<<< orphan*/  e_flags; } ;

/* Variables and functions */
 scalar_t__ LEAF ; 
 int /*<<< orphan*/  Nflag ; 
 int /*<<< orphan*/  REMOVED ; 
 int /*<<< orphan*/  TMPNAME ; 
 int /*<<< orphan*/  FUNC0 (struct entry*,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 char* FUNC2 (struct entry*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 

void
FUNC6(struct entry *ep)
{
	char *name;

	if (ep->e_type != LEAF)
		FUNC0(ep, "delwhiteout: not a leaf");
	ep->e_flags |= REMOVED;
	ep->e_flags &= ~TMPNAME;
	name = FUNC2(ep);
	if (!Nflag && FUNC4(name) < 0) {
		FUNC1(stderr, "warning: cannot delete whiteout %s: %s\n",
		    name, FUNC3(errno));
		return;
	}
	FUNC5(stdout, "Delete whiteout %s\n", name);
}