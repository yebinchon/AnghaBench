#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct entry {scalar_t__ e_type; struct entry* e_next; int /*<<< orphan*/  e_ino; struct entry* e_links; TYPE_1__* e_parent; } ;
typedef  scalar_t__ ino_t ;
struct TYPE_2__ {scalar_t__ e_ino; } ;

/* Variables and functions */
 scalar_t__ LEAF ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ UFS_ROOTINO ; 
 scalar_t__ UFS_WINO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dumpmap ; 
 int /*<<< orphan*/  FUNC4 (struct entry*) ; 
 struct entry* FUNC5 (scalar_t__) ; 
 scalar_t__ maxino ; 
 int /*<<< orphan*/  FUNC6 (struct entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct entry*) ; 
 struct entry* removelist ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  usedinomap ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

void
FUNC10(void)
{
	struct entry *ep, *nextep;
	ino_t i, mydirino;

	FUNC9(stdout, "Mark entries to be removed.\n");
	if ((ep = FUNC5(UFS_WINO))) {
		FUNC9(stdout, "Delete whiteouts\n");
		for ( ; ep != NULL; ep = nextep) {
			nextep = ep->e_links;
			mydirino = ep->e_parent->e_ino;
			/*
			 * We remove all whiteouts that are in directories
			 * that have been removed or that have been dumped.
			 */
			if (FUNC0(mydirino, usedinomap) &&
			    !FUNC0(mydirino, dumpmap))
				continue;
			FUNC2(ep);
			FUNC4(ep);
		}
	}
	for (i = UFS_ROOTINO + 1; i < maxino; i++) {
		ep = FUNC5(i);
		if (ep == NULL)
			continue;
		if (FUNC0(i, usedinomap))
			continue;
		for ( ; ep != NULL; ep = ep->e_links) {
			FUNC3(stdout, "%s: REMOVE\n", FUNC7(ep));
			if (ep->e_type == LEAF) {
				FUNC8(ep);
				FUNC4(ep);
			} else {
				FUNC6(ep);
				FUNC1(ep->e_ino);
				ep->e_next = removelist;
				removelist = ep;
			}
		}
	}
}