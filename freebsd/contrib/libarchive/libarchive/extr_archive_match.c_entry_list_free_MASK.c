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
struct match_file {int /*<<< orphan*/  pathname; struct match_file* next; } ;
struct entry_list {struct match_file* first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct match_file*) ; 

__attribute__((used)) static void
FUNC2(struct entry_list *list)
{
	struct match_file *p, *q;

	for (p = list->first; p != NULL; ) {
		q = p;
		p = p->next;
		FUNC0(&(q->pathname));
		FUNC1(q);
	}
}