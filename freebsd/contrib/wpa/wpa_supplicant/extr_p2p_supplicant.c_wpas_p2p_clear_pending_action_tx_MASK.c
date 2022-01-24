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
struct wpa_supplicant {scalar_t__ p2p_send_action_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  wpas_p2p_send_action_work_timeout ; 

__attribute__((used)) static void FUNC6(struct wpa_supplicant *wpa_s)
{
	if (!FUNC2(wpa_s))
		return;

	if (wpa_s->p2p_send_action_work) {
		FUNC5(wpa_s);
		FUNC0(wpas_p2p_send_action_work_timeout,
				     wpa_s, NULL);
		FUNC3(wpa_s);
	}

	FUNC4(MSG_DEBUG, "P2P: Drop pending Action TX due to new "
		   "operation request");
	FUNC1(wpa_s);
}