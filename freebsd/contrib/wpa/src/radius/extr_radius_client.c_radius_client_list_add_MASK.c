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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {scalar_t__ sec; } ;
struct radius_msg_list {size_t shared_secret_len; int attempts; int accu_attempts; int next_wait; struct radius_msg_list* next; scalar_t__ first_try; scalar_t__ next_try; TYPE_1__ last_attempt; int /*<<< orphan*/  const* shared_secret; int /*<<< orphan*/  msg_type; struct radius_msg* msg; int /*<<< orphan*/  addr; } ;
struct radius_msg {int dummy; } ;
struct radius_client_data {scalar_t__ num_msgs; struct radius_msg_list* msgs; } ;
typedef  int /*<<< orphan*/  RadiusType ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int RADIUS_CLIENT_FIRST_WAIT ; 
 scalar_t__ RADIUS_CLIENT_MAX_ENTRIES ; 
 int RADIUS_CLIENT_MAX_WAIT ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct radius_msg_list* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct radius_msg_list*) ; 
 int /*<<< orphan*/  FUNC5 (struct radius_client_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct radius_msg*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC8(struct radius_client_data *radius,
				   struct radius_msg *msg,
				   RadiusType msg_type,
				   const u8 *shared_secret,
				   size_t shared_secret_len, const u8 *addr)
{
	struct radius_msg_list *entry, *prev;

	if (FUNC0()) {
		/* No point in adding entries to retransmit queue since event
		 * loop has already been terminated. */
		FUNC6(msg);
		return;
	}

	entry = FUNC3(sizeof(*entry));
	if (entry == NULL) {
		FUNC7(MSG_INFO, "RADIUS: Failed to add packet into retransmit list");
		FUNC6(msg);
		return;
	}

	if (addr)
		FUNC2(entry->addr, addr, ETH_ALEN);
	entry->msg = msg;
	entry->msg_type = msg_type;
	entry->shared_secret = shared_secret;
	entry->shared_secret_len = shared_secret_len;
	FUNC1(&entry->last_attempt);
	entry->first_try = entry->last_attempt.sec;
	entry->next_try = entry->first_try + RADIUS_CLIENT_FIRST_WAIT;
	entry->attempts = 1;
	entry->accu_attempts = 1;
	entry->next_wait = RADIUS_CLIENT_FIRST_WAIT * 2;
	if (entry->next_wait > RADIUS_CLIENT_MAX_WAIT)
		entry->next_wait = RADIUS_CLIENT_MAX_WAIT;
	entry->next = radius->msgs;
	radius->msgs = entry;
	FUNC5(radius);

	if (radius->num_msgs >= RADIUS_CLIENT_MAX_ENTRIES) {
		FUNC7(MSG_INFO, "RADIUS: Removing the oldest un-ACKed packet due to retransmit list limits");
		prev = NULL;
		while (entry->next) {
			prev = entry;
			entry = entry->next;
		}
		if (prev) {
			prev->next = NULL;
			FUNC4(entry);
		}
	} else
		radius->num_msgs++;
}