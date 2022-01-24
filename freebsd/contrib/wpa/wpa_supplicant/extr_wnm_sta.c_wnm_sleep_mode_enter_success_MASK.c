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
typedef  int u8 ;
typedef  int u16 ;
struct wpa_supplicant {int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WNM_SLEEP_ENTER_CONFIRM ; 
 int /*<<< orphan*/  WNM_SLEEP_TFS_RESP_IE_SET ; 
 scalar_t__ FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ,int const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(struct wpa_supplicant *wpa_s,
					 const u8 *tfsresp_ie_start,
					 const u8 *tfsresp_ie_end)
{
	FUNC1(wpa_s, WNM_SLEEP_ENTER_CONFIRM,
			 wpa_s->bssid, NULL, NULL);
	/* remove GTK/IGTK ?? */

	/* set the TFS Resp IE(s) */
	if (tfsresp_ie_start && tfsresp_ie_end &&
	    tfsresp_ie_end - tfsresp_ie_start >= 0) {
		u16 tfsresp_ie_len;
		tfsresp_ie_len = (tfsresp_ie_end + tfsresp_ie_end[1] + 2) -
			tfsresp_ie_start;
		FUNC2(MSG_DEBUG, "TFS Resp IE(s) found");
		/* pass the TFS Resp IE(s) to driver for processing */
		if (FUNC0(wpa_s, wpa_s->bssid,
					    tfsresp_ie_start,
					    tfsresp_ie_len,
					    WNM_SLEEP_TFS_RESP_IE_SET))
			FUNC2(MSG_DEBUG, "WNM: Fail to set TFS Resp IE");
	}
}