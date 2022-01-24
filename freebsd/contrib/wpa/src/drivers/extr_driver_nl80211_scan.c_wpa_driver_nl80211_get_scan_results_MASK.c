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
struct wpa_scan_results {int dummy; } ;
struct wpa_driver_nl80211_data {int dummy; } ;
struct i802_bss {struct wpa_driver_nl80211_data* drv; } ;

/* Variables and functions */
 struct wpa_scan_results* FUNC0 (struct wpa_driver_nl80211_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_driver_nl80211_data*,struct wpa_scan_results*) ; 

struct wpa_scan_results * FUNC2(void *priv)
{
	struct i802_bss *bss = priv;
	struct wpa_driver_nl80211_data *drv = bss->drv;
	struct wpa_scan_results *res;

	res = FUNC0(drv);
	if (res)
		FUNC1(drv, res);
	return res;
}