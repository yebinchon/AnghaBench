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
typedef  int u8 ;
struct wpa_ie_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ OSEN_IE_VENDOR_TYPE ; 
 int const WLAN_EID_RSN ; 
 int const WLAN_EID_VENDOR_SPECIFIC ; 
 scalar_t__ FUNC0 (int const*) ; 
 int FUNC1 (int const*,size_t,struct wpa_ie_data*) ; 
 int FUNC2 (int const*,size_t,struct wpa_ie_data*) ; 

int FUNC3(const u8 *wpa_ie, size_t wpa_ie_len,
		     struct wpa_ie_data *data)
{
	if (wpa_ie_len >= 1 && wpa_ie[0] == WLAN_EID_RSN)
		return FUNC1(wpa_ie, wpa_ie_len, data);
	if (wpa_ie_len >= 6 && wpa_ie[0] == WLAN_EID_VENDOR_SPECIFIC &&
	    wpa_ie[1] >= 4 && FUNC0(&wpa_ie[2]) == OSEN_IE_VENDOR_TYPE)
		return FUNC1(wpa_ie, wpa_ie_len, data);
	else
		return FUNC2(wpa_ie, wpa_ie_len, data);
}