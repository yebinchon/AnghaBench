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
struct sta_info {int /*<<< orphan*/  backlogged_until; int /*<<< orphan*/  addr; struct sta_info* next; } ;
struct os_reltime {int dummy; } ;
struct hostapd_data {unsigned int num_backlogged_sta; struct sta_info* sta_list; } ;
struct hostap_sta_driver_data {scalar_t__ backlog_bytes; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hostapd_data*,struct hostap_sta_driver_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct os_reltime*) ; 
 scalar_t__ FUNC2 (struct os_reltime*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hostapd_data*,struct sta_info*,struct os_reltime*) ; 

__attribute__((used)) static void FUNC4(struct hostapd_data *hapd)
{
	struct sta_info *sta;
	struct hostap_sta_driver_data data = {};
	unsigned int num_backlogged = 0;
	struct os_reltime now;

	FUNC1(&now);

	for (sta = hapd->sta_list; sta; sta = sta->next) {
		if (FUNC0(hapd, &data, sta->addr))
			continue;

		if (data.backlog_bytes > 0)
			FUNC3(hapd, sta, &now);
		if (FUNC2(&now, &sta->backlogged_until))
			num_backlogged++;
	}
	hapd->num_backlogged_sta = num_backlogged;
}