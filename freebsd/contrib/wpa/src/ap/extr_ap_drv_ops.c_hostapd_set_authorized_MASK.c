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
struct sta_info {int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WPA_STA_AUTHORIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hostapd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct hostapd_data *hapd,
			   struct sta_info *sta, int authorized)
{
	if (authorized) {
		return FUNC1(hapd, sta->addr,
					     FUNC0(
						     sta->flags),
					     WPA_STA_AUTHORIZED, ~0);
	}

	return FUNC1(hapd, sta->addr,
				     FUNC0(sta->flags),
				     0, ~WPA_STA_AUTHORIZED);
}