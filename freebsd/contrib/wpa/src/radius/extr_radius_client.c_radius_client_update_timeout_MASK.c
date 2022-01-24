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
struct radius_msg_list {scalar_t__ next_try; struct radius_msg_list* next; } ;
struct radius_client_data {int /*<<< orphan*/  ctx; struct radius_msg_list* msgs; } ;
struct os_reltime {scalar_t__ sec; } ;
typedef  scalar_t__ os_time_t ;

/* Variables and functions */
 int /*<<< orphan*/  HOSTAPD_LEVEL_DEBUG ; 
 int /*<<< orphan*/  HOSTAPD_MODULE_RADIUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct radius_client_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct radius_client_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,long) ; 
 int /*<<< orphan*/  FUNC3 (struct os_reltime*) ; 
 int /*<<< orphan*/  radius_client_timer ; 

__attribute__((used)) static void FUNC4(struct radius_client_data *radius)
{
	struct os_reltime now;
	os_time_t first;
	struct radius_msg_list *entry;

	FUNC0(radius_client_timer, radius, NULL);

	if (radius->msgs == NULL) {
		return;
	}

	first = 0;
	for (entry = radius->msgs; entry; entry = entry->next) {
		if (first == 0 || entry->next_try < first)
			first = entry->next_try;
	}

	FUNC3(&now);
	if (first < now.sec)
		first = now.sec;
	FUNC1(first - now.sec, 0, radius_client_timer, radius,
			       NULL);
	FUNC2(radius->ctx, NULL, HOSTAPD_MODULE_RADIUS,
		       HOSTAPD_LEVEL_DEBUG, "Next RADIUS client retransmit in"
		       " %ld seconds", (long int) (first - now.sec));
}