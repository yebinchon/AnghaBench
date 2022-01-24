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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_int8_t ;
struct TYPE_2__ {int /*<<< orphan*/  tx_highest; int /*<<< orphan*/  tx_mcs_map; int /*<<< orphan*/  rx_highest; int /*<<< orphan*/  rx_mcs_map; } ;
struct ieee80211_ie_vhtcap {TYPE_1__ supp_mcs; int /*<<< orphan*/  vht_cap_info; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC3(const char *tag, const u_int8_t *ie, size_t ielen, int maxlen)
{
	FUNC2("%s", tag);
	if (verbose) {
		const struct ieee80211_ie_vhtcap *vhtcap =
		    (const struct ieee80211_ie_vhtcap *) ie;
		uint32_t vhtcap_info = FUNC1(&vhtcap->vht_cap_info);

		FUNC2("<cap 0x%08x", vhtcap_info);
		FUNC2(" rx_mcs_map 0x%x",
		    FUNC0(&vhtcap->supp_mcs.rx_mcs_map));
		FUNC2(" rx_highest %d",
		    FUNC0(&vhtcap->supp_mcs.rx_highest) & 0x1fff);
		FUNC2(" tx_mcs_map 0x%x",
		    FUNC0(&vhtcap->supp_mcs.tx_mcs_map));
		FUNC2(" tx_highest %d",
		    FUNC0(&vhtcap->supp_mcs.tx_highest) & 0x1fff);

		FUNC2(">");
	}
}