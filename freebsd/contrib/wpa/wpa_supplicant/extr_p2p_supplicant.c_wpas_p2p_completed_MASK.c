#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpa_supplicant {int p2p_go_group_formation_completed; int /*<<< orphan*/  p2pdev; int /*<<< orphan*/  wpa; scalar_t__ assoc_freq; TYPE_2__* current_bss; TYPE_1__* global; int /*<<< orphan*/ * go_dev_addr; scalar_t__ p2p_in_invitation; scalar_t__ p2p_in_provisioning; scalar_t__ show_group_started; struct wpa_ssid* current_ssid; } ;
struct wpa_ssid {scalar_t__ mode; int /*<<< orphan*/ * passphrase; int /*<<< orphan*/ * psk; scalar_t__ psk_set; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; int /*<<< orphan*/ * bssid; scalar_t__ bssid_set; } ;
typedef  int /*<<< orphan*/  ip_addr ;
struct TYPE_4__ {int freq; } ;
struct TYPE_3__ {struct wpa_supplicant* p2p_group_formation; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ WPAS_MODE_P2P_GROUP_FORMATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*,struct wpa_ssid*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wpas_p2p_group_formation_timeout ; 
 int /*<<< orphan*/  FUNC8 (struct wpa_supplicant*,int /*<<< orphan*/ ,struct wpa_ssid*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 int FUNC9 (struct wpa_supplicant*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct wpa_ssid*,int /*<<< orphan*/ *) ; 

void FUNC11(struct wpa_supplicant *wpa_s)
{
	struct wpa_ssid *ssid = wpa_s->current_ssid;
	u8 go_dev_addr[ETH_ALEN];
	int persistent;
	int freq;
	u8 ip[3 * 4], *ip_ptr = NULL;
	char ip_addr[100];

	if (ssid == NULL || ssid->mode != WPAS_MODE_P2P_GROUP_FORMATION) {
		FUNC0(wpas_p2p_group_formation_timeout,
				     wpa_s->p2pdev, NULL);
	}

	if (!wpa_s->show_group_started || !ssid)
		return;

	wpa_s->show_group_started = 0;
	if (!wpa_s->p2p_go_group_formation_completed &&
	    wpa_s->global->p2p_group_formation == wpa_s) {
		FUNC5(wpa_s, MSG_DEBUG,
			"P2P: Marking group formation completed on client on data connection");
		wpa_s->p2p_go_group_formation_completed = 1;
		wpa_s->global->p2p_group_formation = NULL;
		wpa_s->p2p_in_provisioning = 0;
		wpa_s->p2p_in_invitation = 0;
	}

	FUNC2(go_dev_addr, 0, ETH_ALEN);
	if (ssid->bssid_set)
		FUNC1(go_dev_addr, ssid->bssid, ETH_ALEN);
	persistent = FUNC9(wpa_s, go_dev_addr, ssid->ssid,
					       ssid->ssid_len);
	FUNC1(wpa_s->go_dev_addr, go_dev_addr, ETH_ALEN);

	if (wpa_s->global->p2p_group_formation == wpa_s)
		wpa_s->global->p2p_group_formation = NULL;

	freq = wpa_s->current_bss ? wpa_s->current_bss->freq :
		(int) wpa_s->assoc_freq;

	ip_addr[0] = '\0';
	if (FUNC6(wpa_s->wpa, ip) == 0) {
		int res;

		res = FUNC3(ip_addr, sizeof(ip_addr),
				  " ip_addr=%u.%u.%u.%u "
				  "ip_mask=%u.%u.%u.%u go_ip_addr=%u.%u.%u.%u",
				  ip[0], ip[1], ip[2], ip[3],
				  ip[4], ip[5], ip[6], ip[7],
				  ip[8], ip[9], ip[10], ip[11]);
		if (FUNC4(sizeof(ip_addr), res))
			ip_addr[0] = '\0';
		ip_ptr = ip;
	}

	FUNC8(wpa_s, 0, ssid, freq,
			       ssid->passphrase == NULL && ssid->psk_set ?
			       ssid->psk : NULL,
			       ssid->passphrase, go_dev_addr, persistent,
			       ip_addr);

	if (persistent)
		FUNC10(wpa_s->p2pdev,
						ssid, go_dev_addr);

	FUNC7(wpa_s, ssid, persistent, 1, ip_ptr);
}