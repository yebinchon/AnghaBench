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
struct wpa_supplicant {int /*<<< orphan*/  conf; } ;
struct wpa_ssid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (char*) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct wpa_ssid* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (struct wpa_supplicant*,struct wpa_ssid*,char*,char*) ; 

__attribute__((used)) static int FUNC7(struct wpa_supplicant *wpa_s,
					      char *rsp)
{
#ifdef IEEE8021X_EAPOL
	char *pos, *id_pos;
	int id;
	struct wpa_ssid *ssid;

	pos = os_strchr(rsp, '-');
	if (pos == NULL)
		return -1;
	*pos++ = '\0';
	id_pos = pos;
	pos = os_strchr(pos, ':');
	if (pos == NULL)
		return -1;
	*pos++ = '\0';
	id = atoi(id_pos);
	wpa_printf(MSG_DEBUG, "CTRL_IFACE: field=%s id=%d", rsp, id);
	wpa_hexdump_ascii_key(MSG_DEBUG, "CTRL_IFACE: value",
			      (u8 *) pos, os_strlen(pos));

	ssid = wpa_config_get_network(wpa_s->conf, id);
	if (ssid == NULL) {
		wpa_printf(MSG_DEBUG, "CTRL_IFACE: Could not find SSID id=%d "
			   "to update", id);
		return -1;
	}

	return wpa_supplicant_ctrl_iface_ctrl_rsp_handle(wpa_s, ssid, rsp,
							 pos);
#else /* IEEE8021X_EAPOL */
	FUNC5(MSG_DEBUG, "CTRL_IFACE: 802.1X not included");
	return -1;
#endif /* IEEE8021X_EAPOL */
}