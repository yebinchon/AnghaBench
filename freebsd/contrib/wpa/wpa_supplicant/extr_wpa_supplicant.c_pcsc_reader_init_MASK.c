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
struct wpa_supplicant {char* imsi; int /*<<< orphan*/ * scard; int /*<<< orphan*/  eapol; int /*<<< orphan*/  wpa; int /*<<< orphan*/  mnc_len; TYPE_1__* conf; } ;
struct TYPE_2__ {scalar_t__ pcsc_pin; int /*<<< orphan*/  pcsc_reader; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct wpa_supplicant *wpa_s)
{
#ifdef PCSC_FUNCS
	size_t len;

	if (!wpa_s->conf->pcsc_reader)
		return 0;

	wpa_s->scard = scard_init(wpa_s->conf->pcsc_reader);
	if (!wpa_s->scard)
		return 1;

	if (wpa_s->conf->pcsc_pin &&
	    scard_set_pin(wpa_s->scard, wpa_s->conf->pcsc_pin) < 0) {
		scard_deinit(wpa_s->scard);
		wpa_s->scard = NULL;
		wpa_msg(wpa_s, MSG_ERROR, "PC/SC PIN validation failed");
		return -1;
	}

	len = sizeof(wpa_s->imsi) - 1;
	if (scard_get_imsi(wpa_s->scard, wpa_s->imsi, &len)) {
		scard_deinit(wpa_s->scard);
		wpa_s->scard = NULL;
		wpa_msg(wpa_s, MSG_ERROR, "Could not read IMSI");
		return -1;
	}
	wpa_s->imsi[len] = '\0';

	wpa_s->mnc_len = scard_get_mnc_len(wpa_s->scard);

	wpa_printf(MSG_DEBUG, "SCARD: IMSI %s (MNC length %d)",
		   wpa_s->imsi, wpa_s->mnc_len);

	wpa_sm_set_scard_ctx(wpa_s->wpa, wpa_s->scard);
	eapol_sm_register_scard_ctx(wpa_s->eapol, wpa_s->scard);
#endif /* PCSC_FUNCS */

	return 0;
}