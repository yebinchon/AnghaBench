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
struct wpa_ssid_value {int dummy; } ;
struct hostapd_neighbor_entry {int /*<<< orphan*/  list; } ;
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_neighbor_entry*) ; 
 struct hostapd_neighbor_entry* FUNC2 (struct hostapd_data*,int /*<<< orphan*/  const*,struct wpa_ssid_value const*) ; 
 int /*<<< orphan*/  FUNC3 (struct hostapd_neighbor_entry*) ; 

int FUNC4(struct hostapd_data *hapd, const u8 *bssid,
			    const struct wpa_ssid_value *ssid)
{
	struct hostapd_neighbor_entry *nr;

	nr = FUNC2(hapd, bssid, ssid);
	if (!nr)
		return -1;

	FUNC1(nr);
	FUNC0(&nr->list);
	FUNC3(nr);

	return 0;
}