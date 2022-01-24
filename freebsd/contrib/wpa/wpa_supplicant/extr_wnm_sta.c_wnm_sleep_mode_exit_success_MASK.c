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
struct wpa_supplicant {int /*<<< orphan*/  wpa; int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  WNM_SLEEP_EXIT_CONFIRM ; 
 int WNM_SLEEP_SUBELEM_GTK ; 
 int WNM_SLEEP_SUBELEM_IGTK ; 
 int WPA_IGTK_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static void FUNC7(struct wpa_supplicant *wpa_s,
					const u8 *frm, u16 key_len_total)
{
	u8 *ptr, *end;
	u8 gtk_len;

	FUNC0(wpa_s, WNM_SLEEP_EXIT_CONFIRM,  wpa_s->bssid,
			 NULL, NULL);

	/* Install GTK/IGTK */

	/* point to key data field */
	ptr = (u8 *) frm + 1 + 2;
	end = ptr + key_len_total;
	FUNC2(MSG_DEBUG, "WNM: Key Data", ptr, key_len_total);

	if (key_len_total && !FUNC5(wpa_s->wpa)) {
		FUNC3(wpa_s, MSG_INFO,
			"WNM: Ignore Key Data in WNM-Sleep Mode Response - PMF not enabled");
		return;
	}

	while (end - ptr > 1) {
		if (2 + ptr[1] > end - ptr) {
			FUNC4(MSG_DEBUG, "WNM: Invalid Key Data element "
				   "length");
			if (end > ptr) {
				FUNC1(MSG_DEBUG, "WNM: Remaining data",
					    ptr, end - ptr);
			}
			break;
		}
		if (*ptr == WNM_SLEEP_SUBELEM_GTK) {
			if (ptr[1] < 11 + 5) {
				FUNC4(MSG_DEBUG, "WNM: Too short GTK "
					   "subelem");
				break;
			}
			gtk_len = *(ptr + 4);
			if (ptr[1] < 11 + gtk_len ||
			    gtk_len < 5 || gtk_len > 32) {
				FUNC4(MSG_DEBUG, "WNM: Invalid GTK "
					   "subelem");
				break;
			}
			FUNC6(
				wpa_s->wpa,
				WNM_SLEEP_SUBELEM_GTK,
				ptr);
			ptr += 13 + gtk_len;
#ifdef CONFIG_IEEE80211W
		} else if (*ptr == WNM_SLEEP_SUBELEM_IGTK) {
			if (ptr[1] < 2 + 6 + WPA_IGTK_LEN) {
				wpa_printf(MSG_DEBUG, "WNM: Too short IGTK "
					   "subelem");
				break;
			}
			wpa_wnmsleep_install_key(wpa_s->wpa,
						 WNM_SLEEP_SUBELEM_IGTK, ptr);
			ptr += 10 + WPA_IGTK_LEN;
#endif /* CONFIG_IEEE80211W */
		} else
			break; /* skip the loop */
	}
}