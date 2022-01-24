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
struct wpa_supplicant {int /*<<< orphan*/  conf; } ;
struct wpa_ssid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_EXCESSIVE ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char) ; 
 size_t FUNC3 (char*,char*,size_t) ; 
 struct wpa_ssid* FUNC4 (int /*<<< orphan*/ ,int) ; 
 char* FUNC5 (struct wpa_ssid*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC7(
	struct wpa_supplicant *wpa_s, char *cmd, char *buf, size_t buflen)
{
	int id;
	size_t res;
	struct wpa_ssid *ssid;
	char *name, *value;

	/* cmd: "<network id> <variable name>" */
	name = FUNC2(cmd, ' ');
	if (name == NULL || buflen == 0)
		return -1;
	*name++ = '\0';

	id = FUNC0(cmd);
	FUNC6(MSG_EXCESSIVE, "CTRL_IFACE: GET_NETWORK id=%d name='%s'",
		   id, name);

	ssid = FUNC4(wpa_s->conf, id);
	if (ssid == NULL) {
		FUNC6(MSG_EXCESSIVE, "CTRL_IFACE: Could not find network "
			   "id=%d", id);
		return -1;
	}

	value = FUNC5(ssid, name);
	if (value == NULL) {
		FUNC6(MSG_EXCESSIVE, "CTRL_IFACE: Failed to get network "
			   "variable '%s'", name);
		return -1;
	}

	res = FUNC3(buf, value, buflen);
	if (res >= buflen) {
		FUNC1(value);
		return -1;
	}

	FUNC1(value);

	return res;
}