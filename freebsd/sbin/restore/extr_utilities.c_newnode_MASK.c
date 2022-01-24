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
 int /*<<< orphan*/  EXISTED ; 
 scalar_t__ NODE ; 
 int /*<<< orphan*/  Nflag ; 
 int /*<<< orphan*/  FUNC0 (struct entry*,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 scalar_t__ FUNC2 (char*,int) ; 
 char* FUNC3 (struct entry*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uflag ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 

void
FUNC6(struct entry *np)
{
	char *cp;

	if (np->e_type != NODE)
		FUNC0(np, "newnode: not a node");
	cp = FUNC3(np);
	if (!Nflag && FUNC2(cp, 0777) < 0 && !uflag) {
		np->e_flags |= EXISTED;
		FUNC1(stderr, "warning: %s: %s\n", cp, FUNC4(errno));
		return;
	}
	FUNC5(stdout, "Make node %s\n", cp);
}