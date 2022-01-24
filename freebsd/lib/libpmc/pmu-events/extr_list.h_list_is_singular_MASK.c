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
struct list_head {scalar_t__ next; scalar_t__ prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head const*) ; 

__attribute__((used)) static inline int FUNC1(const struct list_head *head)
{
	return !FUNC0(head) && (head->next == head->prev);
}