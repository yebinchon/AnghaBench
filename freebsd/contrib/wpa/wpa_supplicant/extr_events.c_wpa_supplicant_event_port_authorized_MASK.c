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
struct wpa_supplicant {scalar_t__ wpa_state; int /*<<< orphan*/  eapol; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ WPA_ASSOCIATED ; 
 int /*<<< orphan*/  WPA_COMPLETED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct wpa_supplicant *wpa_s)
{
	if (wpa_s->wpa_state == WPA_ASSOCIATED) {
		FUNC2(wpa_s);
		FUNC3(wpa_s, WPA_COMPLETED);
		FUNC1(wpa_s->eapol, TRUE);
		FUNC0(wpa_s->eapol, TRUE);
	}
}