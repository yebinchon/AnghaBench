
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct hostapd_data {int dummy; } ;
struct anqp_query_info {int dummy; } ;




 int MSG_DEBUG ;
 scalar_t__ OUI_WFA ;

 scalar_t__ WPA_GET_BE24 (int const*) ;
 int rx_anqp_vendor_specific_hs20 (struct hostapd_data*,int const*,int const*,struct anqp_query_info*) ;
 int rx_anqp_vendor_specific_mbo (struct hostapd_data*,int const*,int const*,struct anqp_query_info*) ;
 int rx_anqp_vendor_specific_p2p (struct hostapd_data*,struct anqp_query_info*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void rx_anqp_vendor_specific(struct hostapd_data *hapd,
        const u8 *pos, const u8 *end,
        struct anqp_query_info *qi)
{
 u32 oui;

 if (end - pos < 4) {
  wpa_printf(MSG_DEBUG, "ANQP: Too short vendor specific ANQP "
      "Query element");
  return;
 }

 oui = WPA_GET_BE24(pos);
 pos += 3;
 if (oui != OUI_WFA) {
  wpa_printf(MSG_DEBUG, "ANQP: Unsupported vendor OUI %06x",
      oui);
  return;
 }

 switch (*pos) {
 default:
  wpa_printf(MSG_DEBUG, "ANQP: Unsupported WFA vendor type %u",
      *pos);
  break;
 }
}
