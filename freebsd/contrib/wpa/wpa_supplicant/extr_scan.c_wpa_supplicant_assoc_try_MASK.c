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
struct wpa_supplicant {struct wpa_ssid* prev_scan_ssid; } ;
struct wpa_ssid {struct wpa_ssid* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 void* WILDCARD_SSID_SCAN ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ *,struct wpa_ssid*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,struct wpa_ssid*) ; 
 int FUNC4 (struct wpa_supplicant*,struct wpa_ssid*) ; 

__attribute__((used)) static void FUNC5(struct wpa_supplicant *wpa_s,
				     struct wpa_ssid *ssid)
{
	int min_temp_disabled = 0;

	while (ssid) {
		if (!FUNC3(wpa_s, ssid)) {
			int temp_disabled = FUNC4(wpa_s, ssid);

			if (temp_disabled <= 0)
				break;

			if (!min_temp_disabled ||
			    temp_disabled < min_temp_disabled)
				min_temp_disabled = temp_disabled;
		}
		ssid = ssid->next;
	}

	/* ap_scan=2 mode - try to associate with each SSID. */
	if (ssid == NULL) {
		FUNC0(wpa_s, MSG_DEBUG, "wpa_supplicant_assoc_try: Reached "
			"end of scan list - go back to beginning");
		wpa_s->prev_scan_ssid = WILDCARD_SSID_SCAN;
		FUNC2(wpa_s, min_temp_disabled, 0);
		return;
	}
	if (ssid->next) {
		/* Continue from the next SSID on the next attempt. */
		wpa_s->prev_scan_ssid = ssid;
	} else {
		/* Start from the beginning of the SSID list. */
		wpa_s->prev_scan_ssid = WILDCARD_SSID_SCAN;
	}
	FUNC1(wpa_s, NULL, ssid);
}