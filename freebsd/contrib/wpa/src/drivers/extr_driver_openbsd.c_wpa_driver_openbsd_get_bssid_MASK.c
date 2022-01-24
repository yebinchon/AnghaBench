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
struct openbsd_driver_data {int /*<<< orphan*/  sock; int /*<<< orphan*/  ifname; } ;
struct ieee80211_bssid {int /*<<< orphan*/  i_bssid; int /*<<< orphan*/  i_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_ADDR_LEN ; 
 int /*<<< orphan*/  SIOCG80211BSSID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211_bssid*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(void *priv, u8 *bssid)
{
	struct openbsd_driver_data *drv = priv;
	struct ieee80211_bssid id;

	FUNC2(id.i_name, drv->ifname, sizeof(id.i_name));
	if (FUNC0(drv->sock, SIOCG80211BSSID, &id) < 0)
		return -1;

	FUNC1(bssid, id.i_bssid, IEEE80211_ADDR_LEN);
	return 0;
}