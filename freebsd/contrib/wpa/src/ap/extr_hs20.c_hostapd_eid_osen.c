
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {scalar_t__ ieee80211w; scalar_t__ ocv; scalar_t__ wmm_enabled; int osen; } ;


 int HS20_OSEN_OUI_TYPE ;
 scalar_t__ MGMT_FRAME_PROTECTION_REQUIRED ;
 scalar_t__ NO_MGMT_FRAME_PROTECTION ;
 int OUI_WFA ;
 int RSN_AUTH_KEY_MGMT_OSEN ;
 int RSN_CIPHER_SUITE_CCMP ;
 int RSN_CIPHER_SUITE_NO_GROUP_ADDRESSED ;
 int RSN_NUM_REPLAY_COUNTERS_16 ;
 int RSN_SELECTOR_LEN ;
 int RSN_SELECTOR_PUT (int*,int ) ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int WPA_CAPABILITY_MFPC ;
 int WPA_CAPABILITY_MFPR ;
 int WPA_CAPABILITY_OCVC ;
 int WPA_PUT_BE24 (int*,int ) ;
 int WPA_PUT_LE16 (int*,int) ;

u8 * hostapd_eid_osen(struct hostapd_data *hapd, u8 *eid)
{
 u8 *len;
 u16 capab;

 if (!hapd->conf->osen)
  return eid;

 *eid++ = WLAN_EID_VENDOR_SPECIFIC;
 len = eid++;
 WPA_PUT_BE24(eid, OUI_WFA);
 eid += 3;
 *eid++ = HS20_OSEN_OUI_TYPE;


 RSN_SELECTOR_PUT(eid, RSN_CIPHER_SUITE_NO_GROUP_ADDRESSED);
 eid += RSN_SELECTOR_LEN;


 WPA_PUT_LE16(eid, 1);
 eid += 2;
 RSN_SELECTOR_PUT(eid, RSN_CIPHER_SUITE_CCMP);
 eid += RSN_SELECTOR_LEN;


 WPA_PUT_LE16(eid, 1);
 eid += 2;
 RSN_SELECTOR_PUT(eid, RSN_AUTH_KEY_MGMT_OSEN);
 eid += RSN_SELECTOR_LEN;


 capab = 0;
 if (hapd->conf->wmm_enabled) {

  capab |= (RSN_NUM_REPLAY_COUNTERS_16 << 2);
 }
 WPA_PUT_LE16(eid, capab);
 eid += 2;

 *len = eid - len - 1;

 return eid;
}
