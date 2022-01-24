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
struct FILE_INFO {struct FILE_INFO* st_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct FILE_INFO*) ; 

__attribute__((used)) static struct FILE_INFO *
FUNC1(
	struct FILE_INFO * head
	)
{
	struct FILE_INFO * tail;
	while (NULL != head) {
		tail = head->st_next;
		FUNC0(head);
		head = tail;
	}
	return head;
}