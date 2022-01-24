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
struct nlattr {int dummy; } ;
struct he_capabilities {int he_supported; int /*<<< orphan*/  ppet; int /*<<< orphan*/ * mcs; int /*<<< orphan*/ * mac_cap; int /*<<< orphan*/ * phy_cap; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
typedef  enum ieee80211_op_mode { ____Placeholder_ieee80211_op_mode } ieee80211_op_mode ;

/* Variables and functions */
#define  IEEE80211_MODE_AP 131 
#define  IEEE80211_MODE_IBSS 130 
#define  IEEE80211_MODE_INFRA 129 
#define  IEEE80211_MODE_MESH 128 
 size_t NL80211_BAND_IFTYPE_ATTR_HE_CAP_MAC ; 
 size_t NL80211_BAND_IFTYPE_ATTR_HE_CAP_MCS_SET ; 
 size_t NL80211_BAND_IFTYPE_ATTR_HE_CAP_PHY ; 
 size_t NL80211_BAND_IFTYPE_ATTR_HE_CAP_PPE ; 
 int NL80211_IFTYPE_ADHOC ; 
 int NL80211_IFTYPE_AP ; 
 int NL80211_IFTYPE_MESH_POINT ; 
 int NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC0 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 
 size_t FUNC2 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC4(struct he_capabilities *he_capab,
				 enum ieee80211_op_mode opmode,
				 struct nlattr **tb, struct nlattr **tb_flags)
{
	enum nl80211_iftype iftype;
	size_t len;

	switch (opmode) {
	case IEEE80211_MODE_INFRA:
		iftype = NL80211_IFTYPE_STATION;
		break;
	case IEEE80211_MODE_IBSS:
		iftype = NL80211_IFTYPE_ADHOC;
		break;
	case IEEE80211_MODE_AP:
		iftype = NL80211_IFTYPE_AP;
		break;
	case IEEE80211_MODE_MESH:
		iftype = NL80211_IFTYPE_MESH_POINT;
		break;
	default:
		return;
	}

	if (!FUNC1(tb_flags[iftype]))
		return;

	he_capab->he_supported = 1;

	if (tb[NL80211_BAND_IFTYPE_ATTR_HE_CAP_PHY]) {
		len = FUNC2(tb[NL80211_BAND_IFTYPE_ATTR_HE_CAP_PHY]);

		if (len > sizeof(he_capab->phy_cap))
			len = sizeof(he_capab->phy_cap);
		FUNC3(he_capab->phy_cap,
			  FUNC0(tb[NL80211_BAND_IFTYPE_ATTR_HE_CAP_PHY]),
			  len);
	}

	if (tb[NL80211_BAND_IFTYPE_ATTR_HE_CAP_MAC]) {
		len = FUNC2(tb[NL80211_BAND_IFTYPE_ATTR_HE_CAP_MAC]);

		if (len > sizeof(he_capab->mac_cap))
			len = sizeof(he_capab->mac_cap);
		FUNC3(he_capab->mac_cap,
			  FUNC0(tb[NL80211_BAND_IFTYPE_ATTR_HE_CAP_MAC]),
			  len);
	}

	if (tb[NL80211_BAND_IFTYPE_ATTR_HE_CAP_MCS_SET]) {
		len = FUNC2(tb[NL80211_BAND_IFTYPE_ATTR_HE_CAP_MCS_SET]);

		if (len > sizeof(he_capab->mcs))
			len = sizeof(he_capab->mcs);
		FUNC3(he_capab->mcs,
			  FUNC0(tb[NL80211_BAND_IFTYPE_ATTR_HE_CAP_MCS_SET]),
			  len);
	}

	if (tb[NL80211_BAND_IFTYPE_ATTR_HE_CAP_PPE]) {
		len = FUNC2(tb[NL80211_BAND_IFTYPE_ATTR_HE_CAP_PPE]);

		if (len > sizeof(he_capab->ppet))
			len = sizeof(he_capab->ppet);
		FUNC3(&he_capab->ppet,
			  FUNC0(tb[NL80211_BAND_IFTYPE_ATTR_HE_CAP_PPE]),
			  len);
	}
}