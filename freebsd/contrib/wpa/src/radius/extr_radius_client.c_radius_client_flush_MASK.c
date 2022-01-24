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
struct radius_msg_list {scalar_t__ msg_type; struct radius_msg_list* next; } ;
struct radius_client_data {struct radius_msg_list* msgs; int /*<<< orphan*/  num_msgs; } ;

/* Variables and functions */
 scalar_t__ RADIUS_AUTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct radius_client_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct radius_msg_list*) ; 
 int /*<<< orphan*/  radius_client_timer ; 

void FUNC2(struct radius_client_data *radius, int only_auth)
{
	struct radius_msg_list *entry, *prev, *tmp;

	if (!radius)
		return;

	prev = NULL;
	entry = radius->msgs;

	while (entry) {
		if (!only_auth || entry->msg_type == RADIUS_AUTH) {
			if (prev)
				prev->next = entry->next;
			else
				radius->msgs = entry->next;

			tmp = entry;
			entry = entry->next;
			FUNC1(tmp);
			radius->num_msgs--;
		} else {
			prev = entry;
			entry = entry->next;
		}
	}

	if (radius->msgs == NULL)
		FUNC0(radius_client_timer, radius, NULL);
}