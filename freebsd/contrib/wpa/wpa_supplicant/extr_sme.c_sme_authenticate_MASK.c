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
struct TYPE_3__ {scalar_t__ send_confirm; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {scalar_t__ sae_group_index; TYPE_1__ sae; } ;
struct wpa_supplicant {TYPE_2__ sme; scalar_t__ connect_work; } ;
struct wpa_ssid {int dummy; } ;
struct wpa_connect_work {int sme; struct wpa_ssid* ssid; struct wpa_bss* bss; } ;
struct wpa_bss {int /*<<< orphan*/  freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  SAE_NOTHING ; 
 struct wpa_connect_work* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,struct wpa_connect_work*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct wpa_supplicant*,char*) ; 
 int /*<<< orphan*/  sme_auth_start_cb ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_connect_work*) ; 

void FUNC7(struct wpa_supplicant *wpa_s,
		      struct wpa_bss *bss, struct wpa_ssid *ssid)
{
	struct wpa_connect_work *cwork;

	if (bss == NULL || ssid == NULL)
		return;
	if (wpa_s->connect_work) {
		FUNC4(wpa_s, MSG_DEBUG, "SME: Reject sme_authenticate() call since connect_work exist");
		return;
	}

	if (FUNC3(wpa_s, "sme-connect")) {
		/*
		 * The previous sme-connect work might no longer be valid due to
		 * the fact that the BSS list was updated. In addition, it makes
		 * sense to adhere to the 'newer' decision.
		 */
		FUNC4(wpa_s, MSG_DEBUG,
			"SME: Remove previous pending sme-connect");
		FUNC2(wpa_s, "sme-connect", 0);
	}

	FUNC5(wpa_s);

	cwork = FUNC0(sizeof(*cwork));
	if (cwork == NULL)
		return;
	cwork->bss = bss;
	cwork->ssid = ssid;
	cwork->sme = 1;

#ifdef CONFIG_SAE
	wpa_s->sme.sae.state = SAE_NOTHING;
	wpa_s->sme.sae.send_confirm = 0;
	wpa_s->sme.sae_group_index = 0;
#endif /* CONFIG_SAE */

	if (FUNC1(wpa_s, bss->freq, "sme-connect", 1,
			   sme_auth_start_cb, cwork) < 0)
		FUNC6(cwork);
}