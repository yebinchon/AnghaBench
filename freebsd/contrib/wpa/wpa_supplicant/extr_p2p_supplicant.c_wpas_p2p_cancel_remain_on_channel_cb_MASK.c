#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wpa_supplicant {scalar_t__ p2p_long_listen; scalar_t__ max_remain_on_chan; TYPE_1__* global; } ;
struct TYPE_2__ {int /*<<< orphan*/ * p2p; scalar_t__ p2p_disabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (struct wpa_supplicant*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*) ; 

void FUNC6(struct wpa_supplicant *wpa_s,
					  unsigned int freq)
{
	FUNC3(MSG_DEBUG, "P2P: Cancel remain-on-channel callback "
		   "(p2p_long_listen=%d ms pending_action_tx=%p)",
		   wpa_s->p2p_long_listen, FUNC0(wpa_s));
	FUNC5(wpa_s);
	if (wpa_s->global->p2p_disabled || wpa_s->global->p2p == NULL)
		return;
	if (wpa_s->p2p_long_listen > 0)
		wpa_s->p2p_long_listen -= wpa_s->max_remain_on_chan;
	if (FUNC1(wpa_s->global->p2p, freq) > 0)
		return; /* P2P module started a new operation */
	if (FUNC0(wpa_s))
		return;
	if (wpa_s->p2p_long_listen > 0) {
		FUNC3(MSG_DEBUG, "P2P: Continuing long Listen state");
		FUNC4(wpa_s, wpa_s->p2p_long_listen);
	} else {
		/*
		 * When listen duration is over, stop listen & update p2p_state
		 * to IDLE.
		 */
		FUNC2(wpa_s->global->p2p);
	}
}