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
struct mtree_option {struct mtree_option* value; struct mtree_option* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtree_option*) ; 

__attribute__((used)) static void
FUNC1(struct mtree_option *head)
{
	struct mtree_option *next;

	for (; head != NULL; head = next) {
		next = head->next;
		FUNC0(head->value);
		FUNC0(head);
	}
}