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
struct hostapd_iface {size_t num_bss; struct hostapd_data** bss; struct hostapd_config* conf; struct hapd_interfaces* interfaces; int /*<<< orphan*/ * config_fname; } ;
struct hostapd_data {TYPE_1__* conf; struct hostapd_config* iconf; } ;
struct hostapd_config {TYPE_1__** bss; int /*<<< orphan*/  vht_capab; int /*<<< orphan*/  ht_capab; int /*<<< orphan*/  ieee80211ac; int /*<<< orphan*/  ieee80211n; int /*<<< orphan*/  secondary_channel; int /*<<< orphan*/  acs; int /*<<< orphan*/  channel; } ;
struct hapd_interfaces {size_t count; struct hostapd_iface** iface; struct hostapd_config* (* config_read_cb ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_iface*) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_config*) ; 
 int FUNC2 (struct hostapd_iface*) ; 
 int /*<<< orphan*/  FUNC3 (struct hostapd_config*) ; 
 int /*<<< orphan*/  FUNC4 (struct hostapd_config*) ; 
 int /*<<< orphan*/  FUNC5 (struct hostapd_config*) ; 
 scalar_t__ FUNC6 (struct hostapd_config*,struct hostapd_config*) ; 
 struct hostapd_iface* FUNC7 (struct hapd_interfaces*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct hapd_interfaces*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct hostapd_config*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hostapd_config*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct hostapd_config*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 char* FUNC14 (int /*<<< orphan*/ *) ; 
 struct hostapd_config* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 

int FUNC17(struct hostapd_iface *iface)
{
	struct hapd_interfaces *interfaces = iface->interfaces;
	struct hostapd_data *hapd = iface->bss[0];
	struct hostapd_config *newconf, *oldconf;
	size_t j;

	if (iface->config_fname == NULL) {
		/* Only in-memory config in use - assume it has been updated */
		FUNC0(iface);
		for (j = 0; j < iface->num_bss; j++)
			FUNC8(iface->bss[j]);
		return 0;
	}

	if (iface->interfaces == NULL ||
	    iface->interfaces->config_read_cb == NULL)
		return -1;
	newconf = iface->interfaces->config_read_cb(iface->config_fname);
	if (newconf == NULL)
		return -1;

	FUNC0(iface);

	oldconf = hapd->iconf;
	if (FUNC6(newconf, oldconf)) {
		char *fname;
		int res;

		FUNC16(MSG_DEBUG,
			   "Configuration changes include interface/BSS modification - force full disable+enable sequence");
		fname = FUNC14(iface->config_fname);
		if (!fname) {
			FUNC1(newconf);
			return -1;
		}
		FUNC9(interfaces, hapd->conf->iface);
		iface = FUNC7(interfaces, fname);
		FUNC13(fname);
		FUNC1(newconf);
		if (!iface) {
			FUNC16(MSG_ERROR,
				   "Failed to initialize interface on config reload");
			return -1;
		}
		iface->interfaces = interfaces;
		interfaces->iface[interfaces->count] = iface;
		interfaces->count++;
		res = FUNC2(iface);
		if (res < 0)
			FUNC16(MSG_ERROR,
				   "Failed to enable interface on config reload");
		return res;
	}
	iface->conf = newconf;

	for (j = 0; j < iface->num_bss; j++) {
		hapd = iface->bss[j];
		hapd->iconf = newconf;
		hapd->iconf->channel = oldconf->channel;
		hapd->iconf->acs = oldconf->acs;
		hapd->iconf->secondary_channel = oldconf->secondary_channel;
		hapd->iconf->ieee80211n = oldconf->ieee80211n;
		hapd->iconf->ieee80211ac = oldconf->ieee80211ac;
		hapd->iconf->ht_capab = oldconf->ht_capab;
		hapd->iconf->vht_capab = oldconf->vht_capab;
		FUNC12(hapd->iconf,
					 FUNC5(oldconf));
		FUNC10(
			hapd->iconf,
			FUNC3(oldconf));
		FUNC11(
			hapd->iconf,
			FUNC4(oldconf));
		hapd->conf = newconf->bss[j];
		FUNC8(hapd);
	}

	FUNC1(oldconf);


	return 0;
}