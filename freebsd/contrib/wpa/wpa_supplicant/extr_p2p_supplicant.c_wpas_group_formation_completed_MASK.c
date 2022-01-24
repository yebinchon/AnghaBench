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
typedef  int /*<<< orphan*/  u8 ;
struct wpa_supplicant {int group_formation_reported; scalar_t__ p2p_group_interface; int show_group_started; TYPE_1__* global; int /*<<< orphan*/  p2pdev; int /*<<< orphan*/  p2p_group; struct wpa_ssid* current_ssid; scalar_t__ p2p_in_invitation; scalar_t__ p2p_in_provisioning; scalar_t__ p2p_go_group_formation_completed; } ;
struct wpa_ssid {scalar_t__ mode; int p2p_persistent_group; int /*<<< orphan*/ * passphrase; int /*<<< orphan*/ * psk; scalar_t__ psk_set; int /*<<< orphan*/  frequency; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;
struct TYPE_2__ {int /*<<< orphan*/  p2p_go_wait_client; int /*<<< orphan*/ * add_psk; int /*<<< orphan*/  p2p_dev_addr; struct wpa_supplicant* p2p_group_formation; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  P2P_EVENT_GROUP_FORMATION_FAILURE ; 
 int /*<<< orphan*/  P2P_EVENT_GROUP_FORMATION_SUCCESS ; 
 scalar_t__ P2P_GROUP_INTERFACE_CLIENT ; 
 int /*<<< orphan*/  P2P_GROUP_REMOVAL_FORMATION_FAILED ; 
 scalar_t__ WPAS_MODE_INFRA ; 
 scalar_t__ WPAS_MODE_P2P_GO ; 
 scalar_t__ WPAS_MODE_P2P_GROUP_FORMATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct wpa_supplicant*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_supplicant*,struct wpa_ssid*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC11 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct wpa_supplicant*,int,struct wpa_ssid*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 int FUNC13 (struct wpa_supplicant*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct wpa_ssid*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(struct wpa_supplicant *wpa_s,
					   int success, int already_deleted)
{
	struct wpa_ssid *ssid;
	int client;
	int persistent;
	u8 go_dev_addr[ETH_ALEN];

	/*
	 * This callback is likely called for the main interface. Update wpa_s
	 * to use the group interface if a new interface was created for the
	 * group.
	 */
	if (wpa_s->global->p2p_group_formation)
		wpa_s = wpa_s->global->p2p_group_formation;
	if (wpa_s->p2p_go_group_formation_completed) {
		wpa_s->global->p2p_group_formation = NULL;
		wpa_s->p2p_in_provisioning = 0;
	} else if (wpa_s->p2p_in_provisioning && !success) {
		FUNC5(wpa_s, MSG_DEBUG,
			"P2P: Stop provisioning state due to failure");
		wpa_s->p2p_in_provisioning = 0;
	}
	wpa_s->p2p_in_invitation = 0;
	wpa_s->group_formation_reported = 1;

	if (!success) {
		FUNC6(wpa_s->p2pdev, MSG_INFO,
			       P2P_EVENT_GROUP_FORMATION_FAILURE);
		FUNC8(wpa_s, "");
		if (already_deleted)
			return;
		FUNC11(wpa_s,
				      P2P_GROUP_REMOVAL_FORMATION_FAILED);
		return;
	}

	FUNC6(wpa_s->p2pdev, MSG_INFO,
		       P2P_EVENT_GROUP_FORMATION_SUCCESS);

	ssid = wpa_s->current_ssid;
	if (ssid && ssid->mode == WPAS_MODE_P2P_GROUP_FORMATION) {
		ssid->mode = WPAS_MODE_P2P_GO;
		FUNC4(wpa_s->p2p_group);
		FUNC7(wpa_s, NULL);
	}

	persistent = 0;
	if (ssid) {
		client = ssid->mode == WPAS_MODE_INFRA;
		if (ssid->mode == WPAS_MODE_P2P_GO) {
			persistent = ssid->p2p_persistent_group;
			FUNC2(go_dev_addr, wpa_s->global->p2p_dev_addr,
				  ETH_ALEN);
		} else
			persistent = FUNC13(wpa_s,
							       go_dev_addr,
							       ssid->ssid,
							       ssid->ssid_len);
	} else {
		client = wpa_s->p2p_group_interface ==
			P2P_GROUP_INTERFACE_CLIENT;
		FUNC3(go_dev_addr, 0, ETH_ALEN);
	}

	wpa_s->show_group_started = 0;
	if (client) {
		/*
		 * Indicate event only after successfully completed 4-way
		 * handshake, i.e., when the interface is ready for data
		 * packets.
		 */
		wpa_s->show_group_started = 1;
	} else {
		FUNC12(wpa_s, 1, ssid,
				       ssid ? ssid->frequency : 0,
				       ssid && ssid->passphrase == NULL &&
				       ssid->psk_set ? ssid->psk : NULL,
				       ssid ? ssid->passphrase : NULL,
				       go_dev_addr, persistent, "");
		FUNC10(wpa_s);
		FUNC14(wpa_s);
	}

	if (persistent)
		FUNC15(wpa_s->p2pdev,
						ssid, go_dev_addr);
	else {
		FUNC0(wpa_s->global->add_psk);
		wpa_s->global->add_psk = NULL;
	}

	if (!client) {
		FUNC9(wpa_s, ssid, persistent, 0, NULL);
		FUNC1(&wpa_s->global->p2p_go_wait_client);
	}
}