#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wpa_supplicant {scalar_t__ last_gtk_len; TYPE_2__* conf; int /*<<< orphan*/  wpa; int /*<<< orphan*/  last_gtk; TYPE_1__* global; } ;
struct TYPE_4__ {scalar_t__* country; } ;
struct TYPE_3__ {int wifi_display; scalar_t__ p2p_disabled; int /*<<< orphan*/ * p2p; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int VERSION_STR ; 
 scalar_t__ WPA_NONCE_LEN ; 
 int FUNC0 (char*,size_t,char*,int,...) ; 
 scalar_t__ FUNC1 (size_t,int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int FUNC4 (char*,size_t) ; 
 int FUNC5 (char*,TYPE_2__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,size_t,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct wpa_supplicant *wpa_s,
					 char *cmd, char *buf, size_t buflen)
{
	int res = -1;

	FUNC6(MSG_DEBUG, "CTRL_IFACE GET '%s'", cmd);

	if (FUNC3(cmd, "version") == 0) {
		res = FUNC0(buf, buflen, "%s", VERSION_STR);
	} else if (FUNC2(cmd, "country") == 0) {
		if (wpa_s->conf->country[0] && wpa_s->conf->country[1])
			res = FUNC0(buf, buflen, "%c%c",
					  wpa_s->conf->country[0],
					  wpa_s->conf->country[1]);
#ifdef CONFIG_WIFI_DISPLAY
	} else if (os_strcasecmp(cmd, "wifi_display") == 0) {
		int enabled;
		if (wpa_s->global->p2p == NULL ||
		    wpa_s->global->p2p_disabled)
			enabled = 0;
		else
			enabled = wpa_s->global->wifi_display;
		res = os_snprintf(buf, buflen, "%d", enabled);
#endif /* CONFIG_WIFI_DISPLAY */
#ifdef CONFIG_TESTING_GET_GTK
	} else if (os_strcmp(cmd, "gtk") == 0) {
		if (wpa_s->last_gtk_len == 0)
			return -1;
		res = wpa_snprintf_hex(buf, buflen, wpa_s->last_gtk,
				       wpa_s->last_gtk_len);
		return res;
#endif /* CONFIG_TESTING_GET_GTK */
	} else if (FUNC3(cmd, "tls_library") == 0) {
		res = FUNC4(buf, buflen);
#ifdef CONFIG_TESTING_OPTIONS
	} else if (os_strcmp(cmd, "anonce") == 0) {
		return wpa_snprintf_hex(buf, buflen,
					wpa_sm_get_anonce(wpa_s->wpa),
					WPA_NONCE_LEN);
#endif /* CONFIG_TESTING_OPTIONS */
	} else {
		res = FUNC5(cmd, wpa_s->conf, buf, buflen);
	}

	if (FUNC1(buflen, res))
		return -1;
	return res;
}