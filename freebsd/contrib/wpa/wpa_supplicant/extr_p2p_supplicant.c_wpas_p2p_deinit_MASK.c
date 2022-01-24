#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wpa_supplicant {scalar_t__ p2p_group_common_freqs_num; TYPE_3__* p2p_group_common_freqs; int /*<<< orphan*/ * p2p_oob_dev_pw; TYPE_2__* p2p_send_action_work; scalar_t__ p2p_long_listen; TYPE_3__* go_params; TYPE_1__* global; scalar_t__ drv_priv; scalar_t__ driver; } ;
struct TYPE_6__ {int /*<<< orphan*/  peer_device_addr; } ;
struct TYPE_5__ {TYPE_3__* ctx; } ;
struct TYPE_4__ {int /*<<< orphan*/  p2p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wpas_p2p_group_formation_timeout ; 
 int /*<<< orphan*/  wpas_p2p_group_freq_conflict ; 
 int /*<<< orphan*/  wpas_p2p_group_idle_timeout ; 
 int /*<<< orphan*/  wpas_p2p_join_scan ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  wpas_p2p_long_listen_timeout ; 
 int /*<<< orphan*/  wpas_p2p_psk_failure_removal ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  wpas_p2p_send_action_work_timeout ; 

void FUNC8(struct wpa_supplicant *wpa_s)
{
	if (wpa_s->driver && wpa_s->drv_priv)
		FUNC4(wpa_s, 0);

	if (wpa_s->go_params) {
		/* Clear any stored provisioning info */
		FUNC2(
			wpa_s->global->p2p,
			wpa_s->go_params->peer_device_addr);
	}

	FUNC1(wpa_s->go_params);
	wpa_s->go_params = NULL;
	FUNC0(wpas_p2p_psk_failure_removal, wpa_s, NULL);
	FUNC0(wpas_p2p_group_formation_timeout, wpa_s, NULL);
	FUNC0(wpas_p2p_join_scan, wpa_s, NULL);
	wpa_s->p2p_long_listen = 0;
	FUNC0(wpas_p2p_long_listen_timeout, wpa_s, NULL);
	FUNC0(wpas_p2p_group_idle_timeout, wpa_s, NULL);
	FUNC7(wpa_s);
	FUNC0(wpas_p2p_group_freq_conflict, wpa_s, NULL);
	FUNC6(wpa_s);
	if (wpa_s->p2p_send_action_work) {
		FUNC1(wpa_s->p2p_send_action_work->ctx);
		FUNC3(wpa_s->p2p_send_action_work);
		wpa_s->p2p_send_action_work = NULL;
	}
	FUNC0(wpas_p2p_send_action_work_timeout, wpa_s, NULL);

	FUNC5(wpa_s->p2p_oob_dev_pw);
	wpa_s->p2p_oob_dev_pw = NULL;

	FUNC1(wpa_s->p2p_group_common_freqs);
	wpa_s->p2p_group_common_freqs = NULL;
	wpa_s->p2p_group_common_freqs_num = 0;

	/* TODO: remove group interface from the driver if this wpa_s instance
	 * is on top of a P2P group interface */
}