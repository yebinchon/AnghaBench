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
typedef  int u16 ;
struct wps_data {TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int ap_auth_type; } ;

/* Variables and functions */
 int ATTR_AUTH_TYPE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WPS_AUTH_OPEN ; 
 int WPS_AUTH_WPA2PSK ; 
 int WPS_AUTH_WPAPSK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int) ; 

__attribute__((used)) static int FUNC2(struct wps_data *wps, struct wpabuf *msg)
{
	u16 auth_type = wps->wps->ap_auth_type;

	/*
	 * Work around issues with Windows 7 WPS implementation not liking
	 * multiple Authentication Type bits in M7 AP Settings attribute by
	 * showing only the most secure option from current configuration.
	 */
	if (auth_type & WPS_AUTH_WPA2PSK)
		auth_type = WPS_AUTH_WPA2PSK;
	else if (auth_type & WPS_AUTH_WPAPSK)
		auth_type = WPS_AUTH_WPAPSK;
	else if (auth_type & WPS_AUTH_OPEN)
		auth_type = WPS_AUTH_OPEN;

	FUNC0(MSG_DEBUG, "WPS:  * Authentication Type (0x%x)", auth_type);
	FUNC1(msg, ATTR_AUTH_TYPE);
	FUNC1(msg, 2);
	FUNC1(msg, auth_type);
	return 0;
}