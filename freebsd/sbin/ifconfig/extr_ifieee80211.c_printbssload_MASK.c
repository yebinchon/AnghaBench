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
struct ieee80211_bss_load_ie {int chan_load; int aac; int /*<<< orphan*/  sta_count; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC2(const char *tag, const uint8_t *ie, size_t ielen, int maxlen)
{
	FUNC1("%s", tag);
	if (verbose) {
		const struct ieee80211_bss_load_ie *bssload =
		    (const struct ieee80211_bss_load_ie *) ie;
		FUNC1("<sta count %d, chan load %d, aac %d>",
		    FUNC0(&bssload->sta_count),
		    bssload->chan_load,
		    bssload->aac);
	}
}