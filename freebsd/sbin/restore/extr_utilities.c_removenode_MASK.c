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
struct entry {scalar_t__ e_type; int /*<<< orphan*/  e_flags; int /*<<< orphan*/ * e_entries; } ;

/* Variables and functions */
 scalar_t__ NODE ; 
 int /*<<< orphan*/  Nflag ; 
 int /*<<< orphan*/  REMOVED ; 
 int /*<<< orphan*/  TMPNAME ; 
 int /*<<< orphan*/  FUNC0 (struct entry*,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 char* FUNC2 (struct entry*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 

void
FUNC6(struct entry *ep)
{
	char *cp;

	if (ep->e_type != NODE)
		FUNC0(ep, "removenode: not a node");
	if (ep->e_entries != NULL)
		FUNC0(ep, "removenode: non-empty directory");
	ep->e_flags |= REMOVED;
	ep->e_flags &= ~TMPNAME;
	cp = FUNC2(ep);
	if (!Nflag && FUNC3(cp) < 0) {
		FUNC1(stderr, "warning: %s: %s\n", cp, FUNC4(errno));
		return;
	}
	FUNC5(stdout, "Remove node %s\n", cp);
}