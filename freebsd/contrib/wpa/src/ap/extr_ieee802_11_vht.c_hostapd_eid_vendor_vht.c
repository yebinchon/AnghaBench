
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_vht_operation {int dummy; } ;
struct ieee80211_vht_capabilities {int dummy; } ;
struct hostapd_data {TYPE_1__* iface; } ;
struct TYPE_2__ {int current_mode; } ;


 int OUI_BROADCOM ;
 int VENDOR_VHT_SUBTYPE ;
 int VENDOR_VHT_TYPE ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int WPA_PUT_BE32 (int *,int) ;
 int * hostapd_eid_vht_capabilities (struct hostapd_data*,int *,int ) ;
 int * hostapd_eid_vht_operation (struct hostapd_data*,int *) ;

u8 * hostapd_eid_vendor_vht(struct hostapd_data *hapd, u8 *eid)
{
 u8 *pos = eid;

 if (!hapd->iface->current_mode)
  return eid;

 *pos++ = WLAN_EID_VENDOR_SPECIFIC;
 *pos++ = (5 +
    2 + sizeof(struct ieee80211_vht_capabilities) +
    2 + sizeof(struct ieee80211_vht_operation));

 WPA_PUT_BE32(pos, (OUI_BROADCOM << 8) | VENDOR_VHT_TYPE);
 pos += 4;
 *pos++ = VENDOR_VHT_SUBTYPE;
 pos = hostapd_eid_vht_capabilities(hapd, pos, 0);
 pos = hostapd_eid_vht_operation(hapd, pos);

 return pos;
}
