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
struct wpa_supplicant {struct wpa_bss* current_bss; int /*<<< orphan*/  bssid; } ;
struct wpa_bss {int dummy; } ;

/* Variables and functions */
 struct wpa_bss* FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*) ; 

__attribute__((used)) static void FUNC2(struct wpa_supplicant *wpa_s)
{
	struct wpa_bss *bss = FUNC0(wpa_s, wpa_s->bssid);

	if (!bss) {
		FUNC1(wpa_s);

		/* Get the BSS from the new scan results */
		bss = FUNC0(wpa_s, wpa_s->bssid);
	}

	if (bss)
		wpa_s->current_bss = bss;
}