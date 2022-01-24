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
struct ieee80211_bssid {int /*<<< orphan*/  i_bssid; int /*<<< orphan*/  i_name; } ;
struct bsd_driver_data {TYPE_1__* global; int /*<<< orphan*/  ifname; } ;
struct TYPE_2__ {int /*<<< orphan*/  sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_ADDR_LEN ; 
 int /*<<< orphan*/  IEEE80211_IOC_BSSID ; 
 int /*<<< orphan*/  SIOCG80211BSSID ; 
 scalar_t__ FUNC0 (struct bsd_driver_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211_bssid*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(void *priv, u8 *bssid)
{
	struct bsd_driver_data *drv = priv;
#ifdef SIOCG80211BSSID
	struct ieee80211_bssid bs;

	os_strlcpy(bs.i_name, drv->ifname, sizeof(bs.i_name));
	if (ioctl(drv->global->sock, SIOCG80211BSSID, &bs) < 0)
		return -1;
	os_memcpy(bssid, bs.i_bssid, sizeof(bs.i_bssid));
	return 0;
#else
	return FUNC0(drv, IEEE80211_IOC_BSSID,
		bssid, IEEE80211_ADDR_LEN) < 0 ? -1 : 0;
#endif
}