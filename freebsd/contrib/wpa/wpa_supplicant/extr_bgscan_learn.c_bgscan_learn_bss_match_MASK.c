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
typedef  scalar_t__ u8 ;
struct wpa_scan_res {int dummy; } ;
struct bgscan_learn_data {TYPE_1__* ssid; } ;
struct TYPE_2__ {scalar_t__ const ssid_len; int /*<<< orphan*/  ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLAN_EID_SSID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__ const*,scalar_t__ const) ; 
 scalar_t__* FUNC1 (struct wpa_scan_res*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct bgscan_learn_data *data,
				  struct wpa_scan_res *bss)
{
	const u8 *ie;

	ie = FUNC1(bss, WLAN_EID_SSID);
	if (ie == NULL)
		return 0;

	if (data->ssid->ssid_len != ie[1] ||
	    FUNC0(data->ssid->ssid, ie + 2, ie[1]) != 0)
		return 0; /* SSID mismatch */

	return 1;
}