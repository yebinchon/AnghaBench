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
struct hostapd_data {TYPE_1__* conf; struct eapol_authenticator* eapol_auth; } ;
struct eapol_authenticator {int /*<<< orphan*/ * default_wep_key; } ;
struct TYPE_2__ {int default_wep_key_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct hostapd_data *hapd)
{
	struct eapol_authenticator *eapol = hapd->eapol_auth;

	if (hapd->conf->default_wep_key_len < 1)
		return 0;

	FUNC0(eapol->default_wep_key);
	eapol->default_wep_key = FUNC1(hapd->conf->default_wep_key_len);
	if (eapol->default_wep_key == NULL ||
	    FUNC2(eapol->default_wep_key,
			     hapd->conf->default_wep_key_len)) {
		FUNC4(MSG_INFO, "Could not generate random WEP key");
		FUNC0(eapol->default_wep_key);
		eapol->default_wep_key = NULL;
		return -1;
	}

	FUNC3(MSG_DEBUG, "IEEE 802.1X: New default WEP key",
			eapol->default_wep_key,
			hapd->conf->default_wep_key_len);

	return 0;
}