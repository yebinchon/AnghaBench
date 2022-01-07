
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wpa_driver_nl80211_data {int first_bss; } ;
struct nlattr {int dummy; } ;


 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 size_t NL80211_ATTR_VENDOR_DATA ;
 size_t NL80211_ATTR_VENDOR_ID ;
 size_t NL80211_ATTR_VENDOR_SUBCMD ;
 size_t NL80211_ATTR_WIPHY ;

 int nl80211_get_wiphy_index (int ) ;
 int nl80211_vendor_event_qca (struct wpa_driver_nl80211_data*,int,int *,size_t) ;
 int * nla_data (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 size_t nla_len (struct nlattr*) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void nl80211_vendor_event(struct wpa_driver_nl80211_data *drv,
     struct nlattr **tb)
{
 u32 vendor_id, subcmd, wiphy = 0;
 int wiphy_idx;
 u8 *data = ((void*)0);
 size_t len = 0;

 if (!tb[NL80211_ATTR_VENDOR_ID] ||
     !tb[NL80211_ATTR_VENDOR_SUBCMD])
  return;

 vendor_id = nla_get_u32(tb[NL80211_ATTR_VENDOR_ID]);
 subcmd = nla_get_u32(tb[NL80211_ATTR_VENDOR_SUBCMD]);

 if (tb[NL80211_ATTR_WIPHY])
  wiphy = nla_get_u32(tb[NL80211_ATTR_WIPHY]);

 wpa_printf(MSG_DEBUG, "nl80211: Vendor event: wiphy=%u vendor_id=0x%x subcmd=%u",
     wiphy, vendor_id, subcmd);

 if (tb[NL80211_ATTR_VENDOR_DATA]) {
  data = nla_data(tb[NL80211_ATTR_VENDOR_DATA]);
  len = nla_len(tb[NL80211_ATTR_VENDOR_DATA]);
  wpa_hexdump(MSG_MSGDUMP, "nl80211: Vendor data", data, len);
 }

 wiphy_idx = nl80211_get_wiphy_index(drv->first_bss);
 if (wiphy_idx >= 0 && wiphy_idx != (int) wiphy) {
  wpa_printf(MSG_DEBUG, "nl80211: Ignore vendor event for foreign wiphy %u (own: %d)",
      wiphy, wiphy_idx);
  return;
 }

 switch (vendor_id) {
 case 128:
  nl80211_vendor_event_qca(drv, subcmd, data, len);
  break;
 default:
  wpa_printf(MSG_DEBUG, "nl80211: Ignore unsupported vendor event");
  break;
 }
}
