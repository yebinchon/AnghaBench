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
struct wpa_supplicant {int wpa_state; scalar_t__ key_mgmt; scalar_t__ mgmt_group_cipher; scalar_t__ group_cipher; scalar_t__ pairwise_cipher; } ;
typedef  enum wpa_states { ____Placeholder_wpa_states } wpa_states ;

/* Variables and functions */
 int /*<<< orphan*/  WPA_DISCONNECTED ; 
 scalar_t__ WPA_INTERFACE_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int,int) ; 

void FUNC2(struct wpa_supplicant *wpa_s)
{
	enum wpa_states old_state = wpa_s->wpa_state;

	wpa_s->pairwise_cipher = 0;
	wpa_s->group_cipher = 0;
	wpa_s->mgmt_group_cipher = 0;
	wpa_s->key_mgmt = 0;
	if (wpa_s->wpa_state != WPA_INTERFACE_DISABLED)
		FUNC0(wpa_s, WPA_DISCONNECTED);

	if (wpa_s->wpa_state != old_state)
		FUNC1(wpa_s, wpa_s->wpa_state, old_state);
}