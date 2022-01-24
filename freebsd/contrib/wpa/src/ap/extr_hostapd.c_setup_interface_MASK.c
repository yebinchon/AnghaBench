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
struct hostapd_iface {size_t num_bss; int wait_channel_update; struct hostapd_data** bss; int /*<<< orphan*/ * phy; scalar_t__ driver_ap_teardown; } ;
struct hostapd_data {TYPE_1__* iconf; int /*<<< orphan*/  drv_priv; int /*<<< orphan*/  driver; } ;
struct TYPE_2__ {scalar_t__* country; } ;

/* Variables and functions */
 int /*<<< orphan*/  HAPD_IFACE_COUNTRY_UPDATE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  channel_list_update_timeout ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hostapd_iface*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (struct hostapd_data*) ; 
 scalar_t__ FUNC2 (struct hostapd_data*,char*) ; 
 scalar_t__ FUNC3 (struct hostapd_data*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct hostapd_iface*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct hostapd_iface*) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 int FUNC9 (struct hostapd_iface*) ; 
 scalar_t__ FUNC10 (struct hostapd_iface*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC12(struct hostapd_iface *iface)
{
	struct hostapd_data *hapd = iface->bss[0];
	size_t i;

	/*
	 * It is possible that setup_interface() is called after the interface
	 * was disabled etc., in which case driver_ap_teardown is possibly set
	 * to 1. Clear it here so any other key/station deletion, which is not
	 * part of a teardown flow, would also call the relevant driver
	 * callbacks.
	 */
	iface->driver_ap_teardown = 0;

	if (!iface->phy[0]) {
		const char *phy = FUNC1(hapd);
		if (phy) {
			FUNC11(MSG_DEBUG, "phy: %s", phy);
			FUNC7(iface->phy, phy, sizeof(iface->phy));
		}
	}

	/*
	 * Make sure that all BSSes get configured with a pointer to the same
	 * driver interface.
	 */
	for (i = 1; i < iface->num_bss; i++) {
		iface->bss[i]->driver = hapd->driver;
		iface->bss[i]->drv_priv = hapd->drv_priv;
	}

	if (FUNC5(iface))
		return -1;

	/*
	 * Initialize control interfaces early to allow external monitoring of
	 * channel setup operations that may take considerable amount of time
	 * especially for DFS cases.
	 */
	if (FUNC10(iface))
		return -1;

	if (hapd->iconf->country[0] && hapd->iconf->country[1]) {
		char country[4], previous_country[4];

		FUNC4(iface, HAPD_IFACE_COUNTRY_UPDATE);
		if (FUNC2(hapd, previous_country) < 0)
			previous_country[0] = '\0';

		FUNC6(country, hapd->iconf->country, 3);
		country[3] = '\0';
		if (FUNC3(hapd, country) < 0) {
			FUNC11(MSG_ERROR, "Failed to set country code");
			return -1;
		}

		FUNC11(MSG_DEBUG, "Previous country code %s, new country code %s",
			   previous_country, country);

		if (FUNC8(previous_country, country, 2) != 0) {
			FUNC11(MSG_DEBUG, "Continue interface setup after channel list update");
			iface->wait_channel_update = 1;
			FUNC0(5, 0,
					       channel_list_update_timeout,
					       iface, NULL);
			return 0;
		}
	}

	return FUNC9(iface);
}