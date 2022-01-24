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
struct radius_msg_list {scalar_t__ next_try; scalar_t__ msg_type; scalar_t__ attempts; struct radius_msg_list* next; } ;
struct radius_client_data {int auth_sock; int acct_sock; size_t num_msgs; int /*<<< orphan*/  ctx; struct radius_msg_list* msgs; } ;
struct os_reltime {scalar_t__ sec; } ;
typedef  scalar_t__ os_time_t ;

/* Variables and functions */
 int /*<<< orphan*/  HOSTAPD_LEVEL_DEBUG ; 
 int /*<<< orphan*/  HOSTAPD_MODULE_RADIUS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ RADIUS_ACCT ; 
 scalar_t__ RADIUS_ACCT_INTERIM ; 
 scalar_t__ RADIUS_AUTH ; 
 scalar_t__ RADIUS_CLIENT_NUM_FAILOVER ; 
 int /*<<< orphan*/  FUNC0 (void (*) (void*,void*),struct radius_client_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,void (*) (void*,void*),struct radius_client_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,long) ; 
 int /*<<< orphan*/  FUNC3 (struct os_reltime*) ; 
 int /*<<< orphan*/  FUNC4 (struct radius_client_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct radius_client_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct radius_msg_list*) ; 
 scalar_t__ FUNC7 (struct radius_client_data*,struct radius_msg_list*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC9(void *eloop_ctx, void *timeout_ctx)
{
	struct radius_client_data *radius = eloop_ctx;
	struct os_reltime now;
	os_time_t first;
	struct radius_msg_list *entry, *prev, *tmp;
	int auth_failover = 0, acct_failover = 0;
	size_t prev_num_msgs;
	int s;

	entry = radius->msgs;
	if (!entry)
		return;

	FUNC3(&now);

	while (entry) {
		if (now.sec >= entry->next_try) {
			s = entry->msg_type == RADIUS_AUTH ? radius->auth_sock :
				radius->acct_sock;
			if (entry->attempts > RADIUS_CLIENT_NUM_FAILOVER ||
			    (s < 0 && entry->attempts > 0)) {
				if (entry->msg_type == RADIUS_ACCT ||
				    entry->msg_type == RADIUS_ACCT_INTERIM)
					acct_failover++;
				else
					auth_failover++;
			}
		}
		entry = entry->next;
	}

	if (auth_failover)
		FUNC5(radius);

	if (acct_failover)
		FUNC4(radius);

	entry = radius->msgs;
	first = 0;

	prev = NULL;
	while (entry) {
		prev_num_msgs = radius->num_msgs;
		if (now.sec >= entry->next_try &&
		    FUNC7(radius, entry, now.sec)) {
			if (prev)
				prev->next = entry->next;
			else
				radius->msgs = entry->next;

			tmp = entry;
			entry = entry->next;
			FUNC6(tmp);
			radius->num_msgs--;
			continue;
		}

		if (prev_num_msgs != radius->num_msgs) {
			FUNC8(MSG_DEBUG,
				   "RADIUS: Message removed from queue - restart from beginning");
			entry = radius->msgs;
			prev = NULL;
			continue;
		}

		if (first == 0 || entry->next_try < first)
			first = entry->next_try;

		prev = entry;
		entry = entry->next;
	}

	if (radius->msgs) {
		if (first < now.sec)
			first = now.sec;
		FUNC0(radius_client_timer, radius, NULL);
		FUNC1(first - now.sec, 0,
				       radius_client_timer, radius, NULL);
		FUNC2(radius->ctx, NULL, HOSTAPD_MODULE_RADIUS,
			       HOSTAPD_LEVEL_DEBUG, "Next RADIUS client "
			       "retransmit in %ld seconds",
			       (long int) (first - now.sec));
	}
}