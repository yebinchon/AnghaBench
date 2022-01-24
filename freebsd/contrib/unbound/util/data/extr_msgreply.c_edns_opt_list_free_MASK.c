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
struct edns_option {struct edns_option* next; struct edns_option* opt_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct edns_option*) ; 

void FUNC1(struct edns_option* list)
{
	struct edns_option* n;
	while(list) {
		FUNC0(list->opt_data);
		n = list->next;
		FUNC0(list);
		list = n;
	}
}