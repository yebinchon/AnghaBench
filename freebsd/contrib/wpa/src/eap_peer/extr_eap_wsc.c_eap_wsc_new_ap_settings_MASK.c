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
struct wps_credential {size_t ssid_len; size_t key_len; int /*<<< orphan*/  key; int /*<<< orphan*/  encr_type; int /*<<< orphan*/  auth_type; int /*<<< orphan*/  ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WPS_AUTH_OPEN ; 
 int /*<<< orphan*/  WPS_AUTH_WPA2PSK ; 
 int /*<<< orphan*/  WPS_AUTH_WPAPSK ; 
 int /*<<< orphan*/  WPS_ENCR_AES ; 
 int /*<<< orphan*/  WPS_ENCR_NONE ; 
 int /*<<< orphan*/  WPS_ENCR_TKIP ; 
 int /*<<< orphan*/  WPS_ENCR_WEP ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct wps_credential*,int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (char const*,char) ; 
 size_t FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 
 char* FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(struct wps_credential *cred,
				   const char *params)
{
	const char *pos, *end;
	size_t len;

	FUNC1(cred, 0, sizeof(*cred));

	pos = FUNC5(params, "new_ssid=");
	if (pos == NULL)
		return 0;
	pos += 9;
	end = FUNC2(pos, ' ');
	if (end == NULL)
		len = FUNC3(pos);
	else
		len = end - pos;
	if ((len & 1) || len > 2 * sizeof(cred->ssid) ||
	    FUNC0(pos, cred->ssid, len / 2)) {
		FUNC6(MSG_DEBUG, "EAP-WSC: Invalid new_ssid");
		return -1;
	}
	cred->ssid_len = len / 2;

	pos = FUNC5(params, "new_auth=");
	if (pos == NULL) {
		FUNC6(MSG_DEBUG, "EAP-WSC: Missing new_auth");
		return -1;
	}
	if (FUNC4(pos + 9, "OPEN", 4) == 0)
		cred->auth_type = WPS_AUTH_OPEN;
	else if (FUNC4(pos + 9, "WPAPSK", 6) == 0)
		cred->auth_type = WPS_AUTH_WPAPSK;
	else if (FUNC4(pos + 9, "WPA2PSK", 7) == 0)
		cred->auth_type = WPS_AUTH_WPA2PSK;
	else {
		FUNC6(MSG_DEBUG, "EAP-WSC: Unknown new_auth");
		return -1;
	}

	pos = FUNC5(params, "new_encr=");
	if (pos == NULL) {
		FUNC6(MSG_DEBUG, "EAP-WSC: Missing new_encr");
		return -1;
	}
	if (FUNC4(pos + 9, "NONE", 4) == 0)
		cred->encr_type = WPS_ENCR_NONE;
#ifdef CONFIG_TESTING_OPTIONS
	else if (os_strncmp(pos + 9, "WEP", 3) == 0)
		cred->encr_type = WPS_ENCR_WEP;
#endif /* CONFIG_TESTING_OPTIONS */
	else if (FUNC4(pos + 9, "TKIP", 4) == 0)
		cred->encr_type = WPS_ENCR_TKIP;
	else if (FUNC4(pos + 9, "CCMP", 4) == 0)
		cred->encr_type = WPS_ENCR_AES;
	else {
		FUNC6(MSG_DEBUG, "EAP-WSC: Unknown new_encr");
		return -1;
	}

	pos = FUNC5(params, "new_key=");
	if (pos == NULL)
		return 0;
	pos += 8;
	end = FUNC2(pos, ' ');
	if (end == NULL)
		len = FUNC3(pos);
	else
		len = end - pos;
	if ((len & 1) || len > 2 * sizeof(cred->key) ||
	    FUNC0(pos, cred->key, len / 2)) {
		FUNC6(MSG_DEBUG, "EAP-WSC: Invalid new_key");
		return -1;
	}
	cred->key_len = len / 2;

	return 1;
}