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
struct wpabuf {int dummy; } ;
struct wpa_ssid {scalar_t__ roaming_consortium_selection_len; int /*<<< orphan*/  roaming_consortium_selection; } ;

/* Variables and functions */
 scalar_t__ HS20_ROAMING_CONS_SEL_OUI_TYPE ; 
 int /*<<< orphan*/  OUI_WFA ; 
 scalar_t__ WLAN_EID_VENDOR_SPECIFIC ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,scalar_t__) ; 

void FUNC3(struct wpabuf *buf,
				 const struct wpa_ssid *ssid)
{
	if (!ssid->roaming_consortium_selection ||
	    !ssid->roaming_consortium_selection_len)
		return;

	FUNC2(buf, WLAN_EID_VENDOR_SPECIFIC);
	FUNC2(buf, 4 + ssid->roaming_consortium_selection_len);
	FUNC0(buf, OUI_WFA);
	FUNC2(buf, HS20_ROAMING_CONS_SEL_OUI_TYPE);
	FUNC1(buf, ssid->roaming_consortium_selection,
			ssid->roaming_consortium_selection_len);
}