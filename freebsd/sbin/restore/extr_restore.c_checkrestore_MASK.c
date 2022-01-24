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
struct entry {int e_flags; scalar_t__ e_type; struct entry* e_links; } ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 int EXISTED ; 
 int KEEP ; 
 int NEW ; 
 scalar_t__ NODE ; 
 scalar_t__ UFS_WINO ; 
 int /*<<< orphan*/  FUNC0 (struct entry*,char*) ; 
 struct entry* FUNC1 (scalar_t__) ; 
 scalar_t__ maxino ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void
FUNC3(void)
{
	struct entry *ep;
	ino_t i;

	FUNC2(stdout, "Check the symbol table.\n");
	for (i = UFS_WINO; i < maxino; i++) {
		for (ep = FUNC1(i); ep != NULL; ep = ep->e_links) {
			ep->e_flags &= ~KEEP;
			if (ep->e_type == NODE)
				ep->e_flags &= ~(NEW|EXISTED);
			if (ep->e_flags != 0)
				FUNC0(ep, "incomplete operations");
		}
	}
}