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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  token; } ;
struct wpa_supplicant {int /*<<< orphan*/  bssid; int /*<<< orphan*/  own_addr; int /*<<< orphan*/  assoc_freq; TYPE_1__ rrm; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  WLAN_ACTION_RADIO_MEASUREMENT ; 
 int /*<<< orphan*/  WLAN_RRM_RADIO_MEASUREMENT_REPORT ; 
 scalar_t__ FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct wpa_supplicant *wpa_s,
					  const u8 *data, size_t len)
{
	struct wpabuf *report = FUNC2(len + 3);

	if (!report)
		return;

	FUNC7(report, WLAN_ACTION_RADIO_MEASUREMENT);
	FUNC7(report, WLAN_RRM_RADIO_MEASUREMENT_REPORT);
	FUNC7(report, wpa_s->rrm.token);

	FUNC6(report, data, len);

	if (FUNC0(wpa_s, wpa_s->assoc_freq, 0, wpa_s->bssid,
				wpa_s->own_addr, wpa_s->bssid,
				FUNC4(report), FUNC5(report), 0)) {
		FUNC1(MSG_ERROR,
			   "RRM: Radio measurement report failed: Sending Action frame failed");
	}

	FUNC3(report);
}