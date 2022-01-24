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
struct entry {scalar_t__ e_type; scalar_t__ e_flags; struct entry* e_sibling; struct entry* e_entries; struct entry* e_next; } ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 scalar_t__ LEAF ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ UFS_ROOTINO ; 
 int /*<<< orphan*/  FUNC1 (struct entry*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dumpmap ; 
 int /*<<< orphan*/  FUNC3 (struct entry*) ; 
 struct entry* FUNC4 (scalar_t__) ; 
 scalar_t__ maxino ; 
 int /*<<< orphan*/  FUNC5 (struct entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct entry*) ; 
 struct entry* removelist ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

void
FUNC8(void)
{
	struct entry *ep, *np;
	ino_t i;

	FUNC7(stdout, "Find unreferenced names.\n");
	for (i = UFS_ROOTINO; i < maxino; i++) {
		ep = FUNC4(i);
		if (ep == NULL || ep->e_type == LEAF || FUNC0(i, dumpmap) == 0)
			continue;
		for (np = ep->e_entries; np != NULL; np = np->e_sibling) {
			if (np->e_flags == 0) {
				FUNC2(stdout,
				    "%s: remove unreferenced name\n",
				    FUNC5(np));
				FUNC6(np);
				FUNC3(np);
			}
		}
	}
	/*
	 * Any leaves remaining in removed directories is unreferenced.
	 */
	for (ep = removelist; ep != NULL; ep = ep->e_next) {
		for (np = ep->e_entries; np != NULL; np = np->e_sibling) {
			if (np->e_type == LEAF) {
				if (np->e_flags != 0)
					FUNC1(np, "unreferenced with flags");
				FUNC2(stdout,
				    "%s: remove unreferenced name\n",
				    FUNC5(np));
				FUNC6(np);
				FUNC3(np);
			}
		}
	}
}