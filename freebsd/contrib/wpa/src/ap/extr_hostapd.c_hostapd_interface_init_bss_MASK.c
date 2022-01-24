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
struct hostapd_iface {int num_bss; struct hostapd_data** bss; TYPE_2__* conf; struct hapd_interfaces* interfaces; int /*<<< orphan*/  phy; } ;
struct hostapd_data {char* iface; TYPE_1__* conf; struct hostapd_data* msg_ctx; } ;
struct hostapd_config {int num_bss; struct hostapd_data** bss; } ;
struct hostapd_bss_config {char* iface; TYPE_1__* conf; struct hostapd_bss_config* msg_ctx; } ;
struct hapd_interfaces {size_t count; struct hostapd_config* (* config_read_cb ) (char const*) ;struct hostapd_iface** iface; } ;
struct TYPE_4__ {int num_bss; struct hostapd_data** bss; struct hostapd_data* last_bss; } ;
struct TYPE_3__ {scalar_t__ logger_stdout_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 struct hostapd_data* FUNC0 (struct hostapd_iface*,TYPE_2__*,struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_config*) ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_data*) ; 
 struct hostapd_iface* FUNC3 (struct hapd_interfaces*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct hostapd_iface*) ; 
 scalar_t__ FUNC5 (struct hapd_interfaces*,char const*) ; 
 void* FUNC6 (struct hostapd_data**,int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int) ; 
 struct hostapd_config* FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 

struct hostapd_iface *
FUNC11(struct hapd_interfaces *interfaces, const char *phy,
			   const char *config_fname, int debug)
{
	struct hostapd_iface *new_iface = NULL, *iface = NULL;
	struct hostapd_data *hapd;
	int k;
	size_t i, bss_idx;

	if (!phy || !*phy)
		return NULL;

	for (i = 0; i < interfaces->count; i++) {
		if (FUNC7(interfaces->iface[i]->phy, phy) == 0) {
			iface = interfaces->iface[i];
			break;
		}
	}

	FUNC10(MSG_INFO, "Configuration file: %s (phy %s)%s",
		   config_fname, phy, iface ? "" : " --> new PHY");
	if (iface) {
		struct hostapd_config *conf;
		struct hostapd_bss_config **tmp_conf;
		struct hostapd_data **tmp_bss;
		struct hostapd_bss_config *bss;
		const char *ifname;

		/* Add new BSS to existing iface */
		conf = interfaces->config_read_cb(config_fname);
		if (conf == NULL)
			return NULL;
		if (conf->num_bss > 1) {
			FUNC10(MSG_ERROR, "Multiple BSSes specified in BSS-config");
			FUNC1(conf);
			return NULL;
		}

		ifname = conf->bss[0]->iface;
		if (ifname[0] != '\0' && FUNC5(interfaces, ifname)) {
			FUNC10(MSG_ERROR,
				   "Interface name %s already in use", ifname);
			FUNC1(conf);
			return NULL;
		}

		tmp_conf = FUNC6(
			iface->conf->bss, iface->conf->num_bss + 1,
			sizeof(struct hostapd_bss_config *));
		tmp_bss = FUNC6(iface->bss, iface->num_bss + 1,
					   sizeof(struct hostapd_data *));
		if (tmp_bss)
			iface->bss = tmp_bss;
		if (tmp_conf) {
			iface->conf->bss = tmp_conf;
			iface->conf->last_bss = tmp_conf[0];
		}
		if (tmp_bss == NULL || tmp_conf == NULL) {
			FUNC1(conf);
			return NULL;
		}
		bss = iface->conf->bss[iface->conf->num_bss] = conf->bss[0];
		iface->conf->num_bss++;

		hapd = FUNC0(iface, iface->conf, bss);
		if (hapd == NULL) {
			iface->conf->num_bss--;
			FUNC1(conf);
			return NULL;
		}
		iface->conf->last_bss = bss;
		iface->bss[iface->num_bss] = hapd;
		hapd->msg_ctx = hapd;

		bss_idx = iface->num_bss++;
		conf->num_bss--;
		conf->bss[0] = NULL;
		FUNC1(conf);
	} else {
		/* Add a new iface with the first BSS */
		new_iface = iface = FUNC3(interfaces, config_fname);
		if (!iface)
			return NULL;
		FUNC8(iface->phy, phy, sizeof(iface->phy));
		iface->interfaces = interfaces;
		bss_idx = 0;
	}

	for (k = 0; k < debug; k++) {
		if (iface->bss[bss_idx]->conf->logger_stdout_level > 0)
			iface->bss[bss_idx]->conf->logger_stdout_level--;
	}

	if (iface->conf->bss[bss_idx]->iface[0] == '\0' &&
	    !FUNC2(iface->bss[bss_idx])) {
		FUNC10(MSG_ERROR, "Interface name not specified in %s",
			   config_fname);
		if (new_iface)
			FUNC4(new_iface);
		return NULL;
	}

	return iface;
}