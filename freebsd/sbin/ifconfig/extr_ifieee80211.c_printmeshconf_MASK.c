#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct ieee80211_meshconf_ie {scalar_t__ conf_pselid; scalar_t__ conf_pmetid; scalar_t__ conf_ccid; scalar_t__ conf_syncid; scalar_t__ conf_authid; int conf_form; int conf_cap; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_MESHCONF_AUTH_DISABLED ; 
 scalar_t__ IEEE80211_MESHCONF_CC_DISABLED ; 
 scalar_t__ IEEE80211_MESHCONF_METRIC_AIRTIME ; 
 scalar_t__ IEEE80211_MESHCONF_PATH_HWMP ; 
 scalar_t__ IEEE80211_MESHCONF_SYNC_NEIGHOFF ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC1(const char *tag, const uint8_t *ie, size_t ielen, int maxlen)
{

	FUNC0("%s", tag);
	if (verbose) {
		const struct ieee80211_meshconf_ie *mconf =
			(const struct ieee80211_meshconf_ie *)ie;
		FUNC0("<PATH:");
		if (mconf->conf_pselid == IEEE80211_MESHCONF_PATH_HWMP)
			FUNC0("HWMP");
		else
			FUNC0("UNKNOWN");
		FUNC0(" LINK:");
		if (mconf->conf_pmetid == IEEE80211_MESHCONF_METRIC_AIRTIME)
			FUNC0("AIRTIME");
		else
			FUNC0("UNKNOWN");
		FUNC0(" CONGESTION:");
		if (mconf->conf_ccid == IEEE80211_MESHCONF_CC_DISABLED)
			FUNC0("DISABLED");
		else
			FUNC0("UNKNOWN");
		FUNC0(" SYNC:");
		if (mconf->conf_syncid == IEEE80211_MESHCONF_SYNC_NEIGHOFF)
			FUNC0("NEIGHOFF");
		else
			FUNC0("UNKNOWN");
		FUNC0(" AUTH:");
		if (mconf->conf_authid == IEEE80211_MESHCONF_AUTH_DISABLED)
			FUNC0("DISABLED");
		else
			FUNC0("UNKNOWN");
		FUNC0(" FORM:0x%x CAPS:0x%x>", mconf->conf_form,
		    mconf->conf_cap);
	}
}