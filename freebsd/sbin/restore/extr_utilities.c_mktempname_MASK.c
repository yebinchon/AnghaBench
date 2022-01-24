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
struct entry {int e_flags; int /*<<< orphan*/  e_name; int /*<<< orphan*/  e_namlen; } ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int TMPNAME ; 
 int /*<<< orphan*/  FUNC0 (struct entry*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct entry*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(struct entry *ep)
{
	char oldname[MAXPATHLEN];

	if (ep->e_flags & TMPNAME)
		FUNC0(ep, "mktempname: called with TMPNAME");
	ep->e_flags |= TMPNAME;
	(void) FUNC6(oldname, FUNC3(ep));
	FUNC1(ep->e_name);
	ep->e_name = FUNC5(FUNC2(ep));
	ep->e_namlen = FUNC7(ep->e_name);
	FUNC4(oldname, FUNC3(ep));
}