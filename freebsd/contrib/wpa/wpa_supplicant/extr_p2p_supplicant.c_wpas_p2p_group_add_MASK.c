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
struct wpa_supplicant {TYPE_1__* global; int /*<<< orphan*/  p2p_go_do_acs; } ;
struct p2p_go_neg_results {int persistent_group; } ;
struct TYPE_2__ {int /*<<< orphan*/ * p2p; int /*<<< orphan*/ * add_psk; scalar_t__ p2p_disabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct p2p_go_neg_results*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct wpa_supplicant* FUNC3 (struct wpa_supplicant*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct wpa_supplicant*,struct p2p_go_neg_results*,int,int,int,int,int,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct wpa_supplicant*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*,struct p2p_go_neg_results*,int /*<<< orphan*/ ) ; 

int FUNC8(struct wpa_supplicant *wpa_s, int persistent_group,
		       int freq, int vht_center_freq2, int ht40, int vht,
		       int max_oper_chwidth, int he)
{
	struct p2p_go_neg_results params;

	if (wpa_s->global->p2p_disabled || wpa_s->global->p2p == NULL)
		return -1;

	FUNC0(wpa_s->global->add_psk);
	wpa_s->global->add_psk = NULL;

	/* Make sure we are not running find during connection establishment */
	FUNC2(MSG_DEBUG, "P2P: Stop any on-going P2P FIND");
	FUNC6(wpa_s);

	if (!wpa_s->p2p_go_do_acs) {
		freq = FUNC5(wpa_s, freq);
		if (freq < 0)
			return -1;
	}

	if (FUNC4(wpa_s, &params, freq, vht_center_freq2,
				    ht40, vht, max_oper_chwidth, he, NULL))
		return -1;

	FUNC1(wpa_s->global->p2p, &params);
	params.persistent_group = persistent_group;

	wpa_s = FUNC3(wpa_s, 0, 1);
	if (wpa_s == NULL)
		return -1;
	FUNC7(wpa_s, &params, 0);

	return 0;
}