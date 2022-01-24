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
struct wpa_supplicant {scalar_t__ scan_runs; int /*<<< orphan*/  wps_pin_start_time; int /*<<< orphan*/  own_addr; } ;
struct wpa_ssid {int key_mgmt; int /*<<< orphan*/  eap; } ;
struct wpa_bss {int dummy; } ;
struct os_reltime {scalar_t__ sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WPA_KEY_MGMT_WPS ; 
 int /*<<< orphan*/  WPS_IE_VENDOR_TYPE ; 
 scalar_t__ WPS_PIN_SCAN_IGNORE_SEL_REG ; 
 scalar_t__ WPS_PIN_TIME_IGNORE_SEL_REG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct os_reltime*) ; 
 struct wpabuf* FUNC3 (struct wpa_bss*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 

int FUNC8(struct wpa_supplicant *wpa_s,
			    struct wpa_ssid *ssid, struct wpa_bss *bss)
{
	struct wpabuf *wps_ie;

	if (!(ssid->key_mgmt & WPA_KEY_MGMT_WPS))
		return -1;

	wps_ie = FUNC3(bss, WPS_IE_VENDOR_TYPE);
	if (FUNC0(&ssid->eap)) {
		if (!wps_ie) {
			FUNC4(MSG_DEBUG, "   skip - non-WPS AP");
			return 0;
		}

		if (!FUNC7(wps_ie)) {
			FUNC4(MSG_DEBUG, "   skip - WPS AP "
				   "without active PBC Registrar");
			FUNC5(wps_ie);
			return 0;
		}

		/* TODO: overlap detection */
		FUNC4(MSG_DEBUG, "   selected based on WPS IE "
			   "(Active PBC)");
		FUNC5(wps_ie);
		return 1;
	}

	if (FUNC1(&ssid->eap)) {
		if (!wps_ie) {
			FUNC4(MSG_DEBUG, "   skip - non-WPS AP");
			return 0;
		}

		/*
		 * Start with WPS APs that advertise our address as an
		 * authorized MAC (v2.0) or active PIN Registrar (v1.0) and
		 * allow any WPS AP after couple of scans since some APs do not
		 * set Selected Registrar attribute properly when using
		 * external Registrar.
		 */
		if (!FUNC6(wps_ie, wpa_s->own_addr, 1)) {
			struct os_reltime age;

			FUNC2(&wpa_s->wps_pin_start_time, &age);

			if (wpa_s->scan_runs < WPS_PIN_SCAN_IGNORE_SEL_REG ||
			    age.sec < WPS_PIN_TIME_IGNORE_SEL_REG) {
				FUNC4(MSG_DEBUG,
					   "   skip - WPS AP without active PIN Registrar (scan_runs=%d age=%d)",
					   wpa_s->scan_runs, (int) age.sec);
				FUNC5(wps_ie);
				return 0;
			}
			FUNC4(MSG_DEBUG, "   selected based on WPS IE");
		} else {
			FUNC4(MSG_DEBUG, "   selected based on WPS IE "
				   "(Authorized MAC or Active PIN)");
		}
		FUNC5(wps_ie);
		return 1;
	}

	if (wps_ie) {
		FUNC4(MSG_DEBUG, "   selected based on WPS IE");
		FUNC5(wps_ie);
		return 1;
	}

	return -1;
}