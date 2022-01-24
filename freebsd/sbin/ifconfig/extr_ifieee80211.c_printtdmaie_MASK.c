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
struct ieee80211_tdma_param {int tdma_version; int tdma_slot; int tdma_slotcnt; int tdma_bintval; int* tdma_inuse; int /*<<< orphan*/  tdma_slotlen; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC2(const char *tag, const u_int8_t *ie, size_t ielen, int maxlen)
{
	FUNC1("%s", tag);
	if (verbose && ielen >= sizeof(struct ieee80211_tdma_param)) {
		const struct ieee80211_tdma_param *tdma =
		   (const struct ieee80211_tdma_param *) ie;

		/* XXX tstamp */
		FUNC1("<v%u slot:%u slotcnt:%u slotlen:%u bintval:%u inuse:0x%x>",
		    tdma->tdma_version, tdma->tdma_slot, tdma->tdma_slotcnt,
		    FUNC0(&tdma->tdma_slotlen), tdma->tdma_bintval,
		    tdma->tdma_inuse[0]);
	}
}