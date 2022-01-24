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
struct ieee80211_ie_vht_operation {int chan_width; int center_freq_seg1_idx; int center_freq_seg2_idx; int /*<<< orphan*/  basic_mcs_set; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC2(const char *tag, const u_int8_t *ie, size_t ielen, int maxlen)
{
	FUNC1("%s", tag);
	if (verbose) {
		const struct ieee80211_ie_vht_operation *vhtinfo =
		    (const struct ieee80211_ie_vht_operation *) ie;

		FUNC1("<chw %d freq1_idx %d freq2_idx %d basic_mcs_set 0x%04x>",
		    vhtinfo->chan_width,
		    vhtinfo->center_freq_seg1_idx,
		    vhtinfo->center_freq_seg2_idx,
		    FUNC0(&vhtinfo->basic_mcs_set));
	}
}