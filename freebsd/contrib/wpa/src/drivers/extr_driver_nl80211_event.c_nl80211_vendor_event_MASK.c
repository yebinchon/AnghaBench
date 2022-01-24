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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct wpa_driver_nl80211_data {int /*<<< orphan*/  first_bss; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 size_t NL80211_ATTR_VENDOR_DATA ; 
 size_t NL80211_ATTR_VENDOR_ID ; 
 size_t NL80211_ATTR_VENDOR_SUBCMD ; 
 size_t NL80211_ATTR_WIPHY ; 
#define  OUI_QCA 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_driver_nl80211_data*,int,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct nlattr*) ; 
 size_t FUNC4 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC7(struct wpa_driver_nl80211_data *drv,
				 struct nlattr **tb)
{
	u32 vendor_id, subcmd, wiphy = 0;
	int wiphy_idx;
	u8 *data = NULL;
	size_t len = 0;

	if (!tb[NL80211_ATTR_VENDOR_ID] ||
	    !tb[NL80211_ATTR_VENDOR_SUBCMD])
		return;

	vendor_id = FUNC3(tb[NL80211_ATTR_VENDOR_ID]);
	subcmd = FUNC3(tb[NL80211_ATTR_VENDOR_SUBCMD]);

	if (tb[NL80211_ATTR_WIPHY])
		wiphy = FUNC3(tb[NL80211_ATTR_WIPHY]);

	FUNC6(MSG_DEBUG, "nl80211: Vendor event: wiphy=%u vendor_id=0x%x subcmd=%u",
		   wiphy, vendor_id, subcmd);

	if (tb[NL80211_ATTR_VENDOR_DATA]) {
		data = FUNC2(tb[NL80211_ATTR_VENDOR_DATA]);
		len = FUNC4(tb[NL80211_ATTR_VENDOR_DATA]);
		FUNC5(MSG_MSGDUMP, "nl80211: Vendor data", data, len);
	}

	wiphy_idx = FUNC0(drv->first_bss);
	if (wiphy_idx >= 0 && wiphy_idx != (int) wiphy) {
		FUNC6(MSG_DEBUG, "nl80211: Ignore vendor event for foreign wiphy %u (own: %d)",
			   wiphy, wiphy_idx);
		return;
	}

	switch (vendor_id) {
	case OUI_QCA:
		FUNC1(drv, subcmd, data, len);
		break;
	default:
		FUNC6(MSG_DEBUG, "nl80211: Ignore unsupported vendor event");
		break;
	}
}