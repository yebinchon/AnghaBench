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
struct wpa_supplicant {scalar_t__ wpa_state; } ;

/* Variables and functions */
 scalar_t__ WPA_ASSOCIATING ; 
 scalar_t__ WPA_AUTHENTICATING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sme_assoc_timer ; 
 int /*<<< orphan*/  sme_auth_timer ; 

void FUNC1(struct wpa_supplicant *wpa_s)
{
	/* Make sure timers are cleaned up appropriately. */
	if (wpa_s->wpa_state != WPA_ASSOCIATING)
		FUNC0(sme_assoc_timer, wpa_s, NULL);
	if (wpa_s->wpa_state != WPA_AUTHENTICATING)
		FUNC0(sme_auth_timer, wpa_s, NULL);
}