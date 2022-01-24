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
struct wps_credential {size_t ssid_len; size_t key_len; int /*<<< orphan*/  key; void* encr_type; int /*<<< orphan*/  auth_type; int /*<<< orphan*/  ssid; } ;
struct hostapd_data {TYPE_1__* wps; } ;
typedef  int /*<<< orphan*/  cred ;
struct TYPE_2__ {int /*<<< orphan*/  registrar; } ;

/* Variables and functions */
 int /*<<< orphan*/  WPS_AUTH_OPEN ; 
 int /*<<< orphan*/  WPS_AUTH_WPA2PSK ; 
 int /*<<< orphan*/  WPS_AUTH_WPAPSK ; 
 void* WPS_ENCR_AES ; 
 void* WPS_ENCR_NONE ; 
 void* WPS_ENCR_TKIP ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct wps_credential*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct wps_credential*) ; 

int FUNC5(struct hostapd_data *hapd, const char *ssid,
			  const char *auth, const char *encr, const char *key)
{
	struct wps_credential cred;
	size_t len;

	FUNC1(&cred, 0, sizeof(cred));

	len = FUNC2(ssid);
	if ((len & 1) || len > 2 * sizeof(cred.ssid) ||
	    FUNC0(ssid, cred.ssid, len / 2))
		return -1;
	cred.ssid_len = len / 2;

	if (FUNC3(auth, "OPEN", 4) == 0)
		cred.auth_type = WPS_AUTH_OPEN;
	else if (FUNC3(auth, "WPAPSK", 6) == 0)
		cred.auth_type = WPS_AUTH_WPAPSK;
	else if (FUNC3(auth, "WPA2PSK", 7) == 0)
		cred.auth_type = WPS_AUTH_WPA2PSK;
	else
		return -1;

	if (encr) {
		if (FUNC3(encr, "NONE", 4) == 0)
			cred.encr_type = WPS_ENCR_NONE;
		else if (FUNC3(encr, "TKIP", 4) == 0)
			cred.encr_type = WPS_ENCR_TKIP;
		else if (FUNC3(encr, "CCMP", 4) == 0)
			cred.encr_type = WPS_ENCR_AES;
		else
			return -1;
	} else
		cred.encr_type = WPS_ENCR_NONE;

	if (key) {
		len = FUNC2(key);
		if ((len & 1) || len > 2 * sizeof(cred.key) ||
		    FUNC0(key, cred.key, len / 2))
			return -1;
		cred.key_len = len / 2;
	}

	return FUNC4(hapd->wps->registrar, &cred);
}