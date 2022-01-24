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
typedef  int /*<<< orphan*/  u_int8_t ;
struct ieee80211_ap_chan_report_ie {int i_class; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC1(const char *tag, const u_int8_t *ie, size_t ielen, int maxlen)
{
	FUNC0("%s", tag);
	if (verbose) {
		const struct ieee80211_ap_chan_report_ie *ap =
		    (const struct ieee80211_ap_chan_report_ie *) ie;
		const char *sep = "";
		int i;

		FUNC0("<class %u, chan:[", ap->i_class);

		for (i = 3; i < ielen; i++) {
			FUNC0("%s%u", sep, ie[i]);
			sep = ",";
		}
		FUNC0("]>");
	}
}