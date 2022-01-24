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
struct wpa_supplicant {int /*<<< orphan*/  conf; int /*<<< orphan*/  ifname; } ;
struct wpa_ssid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char) ; 
 char* FUNC3 (struct wpa_ssid*,char*) ; 
 struct wpa_ssid* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (struct wpa_supplicant*,struct wpa_ssid*,char*,char*) ; 

__attribute__((used)) static int FUNC7(
	struct wpa_supplicant *wpa_s, char *cmd,
	struct wpa_supplicant *dst_wpa_s)
{
	struct wpa_ssid *ssid_s, *ssid_d;
	char *name, *id, *value;
	int id_s, id_d, ret;

	/* cmd: "<src network id> <dst network id> <variable name>" */
	id = FUNC2(cmd, ' ');
	if (id == NULL)
		return -1;
	*id++ = '\0';

	name = FUNC2(id, ' ');
	if (name == NULL)
		return -1;
	*name++ = '\0';

	id_s = FUNC0(cmd);
	id_d = FUNC0(id);

	FUNC5(MSG_DEBUG,
		   "CTRL_IFACE: DUP_NETWORK ifname=%s->%s id=%d->%d name='%s'",
		   wpa_s->ifname, dst_wpa_s->ifname, id_s, id_d, name);

	ssid_s = FUNC4(wpa_s->conf, id_s);
	if (ssid_s == NULL) {
		FUNC5(MSG_DEBUG, "CTRL_IFACE: Could not find "
			   "network id=%d", id_s);
		return -1;
	}

	ssid_d = FUNC4(dst_wpa_s->conf, id_d);
	if (ssid_d == NULL) {
		FUNC5(MSG_DEBUG, "CTRL_IFACE: Could not find "
			   "network id=%d", id_d);
		return -1;
	}

	value = FUNC3(ssid_s, name);
	if (value == NULL) {
		FUNC5(MSG_DEBUG, "CTRL_IFACE: Failed to get network "
			   "variable '%s'", name);
		return -1;
	}

	ret = FUNC6(dst_wpa_s, ssid_d, name,
						       value);

	FUNC1(value);

	return ret;
}