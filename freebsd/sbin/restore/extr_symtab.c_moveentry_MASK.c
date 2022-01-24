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
struct entry {int /*<<< orphan*/  e_flags; int /*<<< orphan*/  e_name; int /*<<< orphan*/  e_namlen; struct entry* e_entries; struct entry* e_sibling; struct entry* e_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  TMPNAME ; 
 int /*<<< orphan*/  FUNC0 (struct entry*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct entry*) ; 
 struct entry* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct entry*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*,char) ; 

void
FUNC9(struct entry *ep, char *newname)
{
	struct entry *np;
	char *cp;

	np = FUNC3(newname);
	if (np == NULL)
		FUNC0(ep, "cannot move ROOT");
	if (np != ep->e_parent) {
		FUNC4(ep);
		ep->e_parent = np;
		ep->e_sibling = np->e_entries;
		np->e_entries = ep;
	}
	cp = FUNC8(newname, '/') + 1;
	FUNC1(ep->e_name);
	ep->e_name = FUNC5(cp);
	ep->e_namlen = FUNC7(cp);
	if (FUNC6(FUNC2(ep), ep->e_name) == 0)
		ep->e_flags |= TMPNAME;
	else
		ep->e_flags &= ~TMPNAME;
}