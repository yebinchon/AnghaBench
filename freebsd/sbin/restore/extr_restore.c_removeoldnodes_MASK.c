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
struct entry {struct entry* e_next; int /*<<< orphan*/ * e_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct entry*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct entry*) ; 
 struct entry* removelist ; 
 int /*<<< orphan*/  FUNC2 (struct entry*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

void
FUNC4(void)
{
	struct entry *ep, **prev;
	long change;

	FUNC3(stdout, "Remove old nodes (directories).\n");
	do	{
		change = 0;
		prev = &removelist;
		for (ep = removelist; ep != NULL; ep = *prev) {
			if (ep->e_entries != NULL) {
				prev = &ep->e_next;
				continue;
			}
			*prev = ep->e_next;
			FUNC2(ep);
			FUNC1(ep);
			change++;
		}
	} while (change);
	for (ep = removelist; ep != NULL; ep = ep->e_next)
		FUNC0(ep, "cannot remove, non-empty");
}