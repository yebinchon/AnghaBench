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
struct hostapd_data {int /*<<< orphan*/ * l2; TYPE_1__* conf; scalar_t__ drv_priv; int /*<<< orphan*/ * wpa_auth; } ;
struct TYPE_2__ {int /*<<< orphan*/  iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELOOP_ALL_CTX ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) (struct hostapd_data*,int /*<<< orphan*/ *),struct hostapd_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct hostapd_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct hostapd_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC12(struct hostapd_data *hapd)
{
	FUNC6(hapd);
	FUNC9(hapd);
	if (hapd->wpa_auth) {
		FUNC10(hapd->wpa_auth);
		hapd->wpa_auth = NULL;

		if (hapd->drv_priv && FUNC3(hapd, 0)) {
			FUNC11(MSG_DEBUG, "Could not disable "
				   "PrivacyInvoked for interface %s",
				   hapd->conf->iface);
		}

		if (hapd->drv_priv &&
		    FUNC2(hapd, (u8 *) "", 0)) {
			FUNC11(MSG_DEBUG, "Could not remove generic "
				   "information element from interface %s",
				   hapd->conf->iface);
		}
	}
	FUNC7(hapd);

#ifdef CONFIG_IEEE80211R_AP
	eloop_cancel_timeout(hostapd_wpa_ft_rrb_rx_later, hapd, ELOOP_ALL_CTX);
	hostapd_wpa_ft_rrb_rx_later(hapd, NULL); /* flush without delivering */
	eloop_cancel_timeout(hostapd_oui_deliver_later, hapd, ELOOP_ALL_CTX);
	hostapd_oui_deliver_later(hapd, NULL); /* flush without delivering */
	l2_packet_deinit(hapd->l2);
	hapd->l2 = NULL;
	hostapd_wpa_unregister_ft_oui(hapd);
#endif /* CONFIG_IEEE80211R_AP */
}