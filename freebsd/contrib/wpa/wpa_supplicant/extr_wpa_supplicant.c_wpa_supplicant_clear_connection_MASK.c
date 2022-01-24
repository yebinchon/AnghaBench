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
struct wpa_supplicant {struct wpa_ssid* current_ssid; int /*<<< orphan*/  eapol; int /*<<< orphan*/  wpa; } ;
struct wpa_ssid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  wpa_supplicant_timeout ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*) ; 

__attribute__((used)) static void FUNC7(struct wpa_supplicant *wpa_s,
					    const u8 *addr)
{
	struct wpa_ssid *old_ssid;

	FUNC5(wpa_s);
	FUNC2(wpa_s, addr);
	old_ssid = wpa_s->current_ssid;
	FUNC4(wpa_s);
	FUNC3(wpa_s->wpa, NULL);
	FUNC0(wpa_s->eapol, NULL, NULL);
	if (old_ssid != wpa_s->current_ssid)
		FUNC6(wpa_s);
	FUNC1(wpa_supplicant_timeout, wpa_s, NULL);
}