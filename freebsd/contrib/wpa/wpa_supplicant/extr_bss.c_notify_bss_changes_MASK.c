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
typedef  int u32 ;
struct wpa_supplicant {int dummy; } ;
struct wpa_bss {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int WPA_BSS_FREQ_CHANGED_FLAG ; 
 int WPA_BSS_IES_CHANGED_FLAG ; 
 int WPA_BSS_MODE_CHANGED_FLAG ; 
 int WPA_BSS_PRIVACY_CHANGED_FLAG ; 
 int WPA_BSS_RATES_CHANGED_FLAG ; 
 int WPA_BSS_RSNIE_CHANGED_FLAG ; 
 int WPA_BSS_SIGNAL_CHANGED_FLAG ; 
 int WPA_BSS_WPAIE_CHANGED_FLAG ; 
 int WPA_BSS_WPS_CHANGED_FLAG ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct wpa_supplicant *wpa_s, u32 changes,
			       const struct wpa_bss *bss)
{
	if (changes & WPA_BSS_FREQ_CHANGED_FLAG)
		FUNC0(wpa_s, bss->id);

	if (changes & WPA_BSS_SIGNAL_CHANGED_FLAG)
		FUNC7(wpa_s, bss->id);

	if (changes & WPA_BSS_PRIVACY_CHANGED_FLAG)
		FUNC3(wpa_s, bss->id);

	if (changes & WPA_BSS_MODE_CHANGED_FLAG)
		FUNC2(wpa_s, bss->id);

	if (changes & WPA_BSS_WPAIE_CHANGED_FLAG)
		FUNC8(wpa_s, bss->id);

	if (changes & WPA_BSS_RSNIE_CHANGED_FLAG)
		FUNC5(wpa_s, bss->id);

	if (changes & WPA_BSS_WPS_CHANGED_FLAG)
		FUNC9(wpa_s, bss->id);

	if (changes & WPA_BSS_IES_CHANGED_FLAG)
		FUNC1(wpa_s, bss->id);

	if (changes & WPA_BSS_RATES_CHANGED_FLAG)
		FUNC4(wpa_s, bss->id);

	FUNC6(wpa_s, bss->id);
}