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
typedef  scalar_t__ u32 ;
struct vlan_description {scalar_t__* tagged; int /*<<< orphan*/  untagged; scalar_t__ notempty; } ;
struct TYPE_4__ {int /*<<< orphan*/  sec; } ;
struct sta_info {char* identity; char* radius_cui; int session_timeout_set; TYPE_2__ session_timeout; scalar_t__ acct_interim_interval; struct hostapd_sta_wpa_psk_short* psk; scalar_t__ vlan_id; int /*<<< orphan*/  addr; } ;
struct hostapd_sta_wpa_psk_short {int dummy; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_3__ {scalar_t__ wpa_psk_radius; scalar_t__ acct_interim_interval; int /*<<< orphan*/  vlan; } ;

/* Variables and functions */
 int HOSTAPD_ACL_ACCEPT_TIMEOUT ; 
 int /*<<< orphan*/  HOSTAPD_LEVEL_INFO ; 
 int /*<<< orphan*/  HOSTAPD_MODULE_RADIUS ; 
 scalar_t__ PSK_RADIUS_IGNORED ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_data*,struct sta_info*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct hostapd_data*,struct sta_info*,struct vlan_description*) ; 
 int /*<<< orphan*/  FUNC3 (struct hostapd_sta_wpa_psk_short*) ; 
 int /*<<< orphan*/  FUNC4 (struct hostapd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct vlan_description*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC8(struct hostapd_data *hapd, struct sta_info *sta,
			   int res, u32 session_timeout,
			   u32 acct_interim_interval,
			   struct vlan_description *vlan_id,
			   struct hostapd_sta_wpa_psk_short **psk,
			   char **identity, char **radius_cui)
{
	if (vlan_id->notempty &&
	    !FUNC5(hapd->conf->vlan, vlan_id)) {
		FUNC4(hapd, sta->addr, HOSTAPD_MODULE_RADIUS,
			       HOSTAPD_LEVEL_INFO,
			       "Invalid VLAN %d%s received from RADIUS server",
			       vlan_id->untagged,
			       vlan_id->tagged[0] ? "+" : "");
		return -1;
	}
	if (FUNC2(hapd, sta, vlan_id) < 0)
		return -1;
	if (sta->vlan_id)
		FUNC4(hapd, sta->addr, HOSTAPD_MODULE_RADIUS,
			       HOSTAPD_LEVEL_INFO, "VLAN ID %d", sta->vlan_id);

	FUNC3(sta->psk);
	if (hapd->conf->wpa_psk_radius != PSK_RADIUS_IGNORED) {
		sta->psk = *psk;
		*psk = NULL;
	} else {
		sta->psk = NULL;
	}

	FUNC6(sta->identity);
	sta->identity = *identity;
	*identity = NULL;

	FUNC6(sta->radius_cui);
	sta->radius_cui = *radius_cui;
	*radius_cui = NULL;

	if (hapd->conf->acct_interim_interval == 0 && acct_interim_interval)
		sta->acct_interim_interval = acct_interim_interval;
	if (res == HOSTAPD_ACL_ACCEPT_TIMEOUT) {
		sta->session_timeout_set = 1;
		FUNC7(&sta->session_timeout);
		sta->session_timeout.sec += session_timeout;
		FUNC1(hapd, sta, session_timeout);
	} else {
		sta->session_timeout_set = 0;
		FUNC0(hapd, sta);
	}

	return 0;
}