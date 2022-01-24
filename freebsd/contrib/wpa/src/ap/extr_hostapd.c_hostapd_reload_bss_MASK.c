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
typedef  int /*<<< orphan*/  const u8 ;
struct hostapd_ssid {int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; scalar_t__ ssid_set; TYPE_3__* wpa_psk; scalar_t__ wpa_passphrase; scalar_t__ wpa_passphrase_set; int /*<<< orphan*/  wpa_psk_set; } ;
struct hostapd_data {TYPE_2__* conf; int /*<<< orphan*/ * wpa_auth; int /*<<< orphan*/  radius; TYPE_1__* iconf; int /*<<< orphan*/  started; } ;
struct TYPE_6__ {int /*<<< orphan*/  next; } ;
struct TYPE_5__ {scalar_t__ wmm_enabled; int /*<<< orphan*/  iface; struct hostapd_ssid ssid; scalar_t__ wpa; scalar_t__ osen; scalar_t__ ieee802_1x; int /*<<< orphan*/  radius; } ;
struct TYPE_4__ {scalar_t__ ieee80211n; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct hostapd_data*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct hostapd_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct hostapd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct hostapd_data*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC12 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC16(struct hostapd_data *hapd)
{
	struct hostapd_ssid *ssid;

	if (!hapd->started)
		return;

	if (hapd->conf->wmm_enabled < 0)
		hapd->conf->wmm_enabled = hapd->iconf->ieee80211n;

#ifndef CONFIG_NO_RADIUS
	FUNC11(hapd->radius, hapd->conf->radius);
#endif /* CONFIG_NO_RADIUS */

	ssid = &hapd->conf->ssid;
	if (!ssid->wpa_psk_set && ssid->wpa_psk && !ssid->wpa_psk->next &&
	    ssid->wpa_passphrase_set && ssid->wpa_passphrase) {
		/*
		 * Force PSK to be derived again since SSID or passphrase may
		 * have changed.
		 */
		FUNC0(&hapd->conf->ssid.wpa_psk);
	}
	if (FUNC8(hapd->conf)) {
		FUNC15(MSG_ERROR, "Failed to re-configure WPA PSK "
			   "after reloading configuration");
	}

	if (hapd->conf->ieee802_1x || hapd->conf->wpa)
		FUNC2(hapd, hapd->conf->iface, 1);
	else
		FUNC2(hapd, hapd->conf->iface, 0);

	if ((hapd->conf->wpa || hapd->conf->osen) && hapd->wpa_auth == NULL) {
		FUNC7(hapd);
		if (hapd->wpa_auth)
			FUNC14(hapd->wpa_auth);
	} else if (hapd->conf->wpa) {
		const u8 *wpa_ie;
		size_t wpa_ie_len;
		FUNC1(hapd);
		wpa_ie = FUNC12(hapd->wpa_auth, &wpa_ie_len);
		if (FUNC3(hapd, wpa_ie, wpa_ie_len))
			FUNC15(MSG_ERROR, "Failed to configure WPA IE for "
				   "the kernel driver.");
	} else if (hapd->wpa_auth) {
		FUNC13(hapd->wpa_auth);
		hapd->wpa_auth = NULL;
		FUNC4(hapd, 0);
		FUNC6(hapd->conf->iface, hapd);
		FUNC3(hapd, (u8 *) "", 0);
	}

	FUNC10(hapd);
	FUNC9(hapd);

	if (hapd->conf->ssid.ssid_set &&
	    FUNC5(hapd, hapd->conf->ssid.ssid,
			     hapd->conf->ssid.ssid_len)) {
		FUNC15(MSG_ERROR, "Could not set SSID for kernel driver");
		/* try to continue */
	}
	FUNC15(MSG_DEBUG, "Reconfigured interface %s", hapd->conf->iface);
}