
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sta_info {int supported_rates; int supported_rates_len; int addr; } ;
struct ieee802_11_elems {int supp_rates_len; int ext_supp_rates_len; int ext_supp_rates; int supp_rates; } ;
struct hostapd_data {TYPE_1__* iface; } ;
struct TYPE_4__ {scalar_t__ mode; } ;
struct TYPE_3__ {TYPE_2__* current_mode; } ;


 int HOSTAPD_LEVEL_DEBUG ;
 scalar_t__ HOSTAPD_MODE_IEEE80211AD ;
 int HOSTAPD_MODULE_IEEE80211 ;
 int WLAN_STATUS_SUCCESS ;
 int WLAN_STATUS_UNSPECIFIED_FAILURE ;
 int hostapd_logger (struct hostapd_data*,int ,int ,int ,char*,...) ;
 int merge_byte_arrays (int ,int,int ,int,int ,int) ;

__attribute__((used)) static u16 copy_supp_rates(struct hostapd_data *hapd, struct sta_info *sta,
      struct ieee802_11_elems *elems)
{

 if (hapd->iface->current_mode &&
     hapd->iface->current_mode->mode == HOSTAPD_MODE_IEEE80211AD)
  return WLAN_STATUS_SUCCESS;

 if (!elems->supp_rates) {
  hostapd_logger(hapd, sta->addr, HOSTAPD_MODULE_IEEE80211,
          HOSTAPD_LEVEL_DEBUG,
          "No supported rates element in AssocReq");
  return WLAN_STATUS_UNSPECIFIED_FAILURE;
 }

 if (elems->supp_rates_len + elems->ext_supp_rates_len >
     sizeof(sta->supported_rates)) {
  hostapd_logger(hapd, sta->addr, HOSTAPD_MODULE_IEEE80211,
          HOSTAPD_LEVEL_DEBUG,
          "Invalid supported rates element length %d+%d",
          elems->supp_rates_len,
          elems->ext_supp_rates_len);
  return WLAN_STATUS_UNSPECIFIED_FAILURE;
 }

 sta->supported_rates_len = merge_byte_arrays(
  sta->supported_rates, sizeof(sta->supported_rates),
  elems->supp_rates, elems->supp_rates_len,
  elems->ext_supp_rates, elems->ext_supp_rates_len);

 return WLAN_STATUS_SUCCESS;
}
