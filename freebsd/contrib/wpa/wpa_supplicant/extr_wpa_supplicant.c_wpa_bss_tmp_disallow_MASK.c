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
struct wpa_supplicant {int /*<<< orphan*/  bss_tmp_disallowed; } ;
struct wpa_bss_tmp_disallowed {int rssi_threshold; int /*<<< orphan*/  list; int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wpa_supplicant*,struct wpa_bss_tmp_disallowed*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpa_supplicant*,struct wpa_bss_tmp_disallowed*) ; 
 struct wpa_bss_tmp_disallowed* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wpa_bss_tmp_disallow_timeout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*) ; 
 struct wpa_bss_tmp_disallowed* FUNC7 (struct wpa_supplicant*,int /*<<< orphan*/  const*) ; 

void FUNC8(struct wpa_supplicant *wpa_s, const u8 *bssid,
			  unsigned int sec, int rssi_threshold)
{
	struct wpa_bss_tmp_disallowed *bss;

	bss = FUNC7(wpa_s, bssid);
	if (bss) {
		FUNC1(wpa_bss_tmp_disallow_timeout, wpa_s, bss);
		goto finish;
	}

	bss = FUNC3(sizeof(*bss));
	if (!bss) {
		FUNC5(MSG_DEBUG,
			   "Failed to allocate memory for temp disallow BSS");
		return;
	}

	FUNC4(bss->bssid, bssid, ETH_ALEN);
	FUNC0(&wpa_s->bss_tmp_disallowed, &bss->list);
	FUNC6(wpa_s);

finish:
	bss->rssi_threshold = rssi_threshold;
	FUNC2(sec, 0, wpa_bss_tmp_disallow_timeout,
			       wpa_s, bss);
}