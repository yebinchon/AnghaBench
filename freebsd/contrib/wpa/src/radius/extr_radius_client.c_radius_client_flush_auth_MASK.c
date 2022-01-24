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
typedef  int /*<<< orphan*/  u8 ;
struct radius_msg_list {scalar_t__ msg_type; struct radius_msg_list* next; int /*<<< orphan*/  addr; } ;
struct radius_client_data {int /*<<< orphan*/  num_msgs; struct radius_msg_list* msgs; int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  HOSTAPD_LEVEL_DEBUG ; 
 int /*<<< orphan*/  HOSTAPD_MODULE_RADIUS ; 
 scalar_t__ RADIUS_AUTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radius_msg_list*) ; 

void FUNC3(struct radius_client_data *radius,
			      const u8 *addr)
{
	struct radius_msg_list *entry, *prev, *tmp;

	prev = NULL;
	entry = radius->msgs;
	while (entry) {
		if (entry->msg_type == RADIUS_AUTH &&
		    FUNC1(entry->addr, addr, ETH_ALEN) == 0) {
			FUNC0(radius->ctx, addr,
				       HOSTAPD_MODULE_RADIUS,
				       HOSTAPD_LEVEL_DEBUG,
				       "Removing pending RADIUS authentication"
				       " message for removed client");

			if (prev)
				prev->next = entry->next;
			else
				radius->msgs = entry->next;

			tmp = entry;
			entry = entry->next;
			FUNC2(tmp);
			radius->num_msgs--;
			continue;
		}

		prev = entry;
		entry = entry->next;
	}
}