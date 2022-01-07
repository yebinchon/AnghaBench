
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {int hs20_release; int anqp_domain_id; scalar_t__ disable_dgaf; int hs20; } ;


 int HS20_ANQP_DOMAIN_ID_PRESENT ;
 int HS20_DGAF_DISABLED ;
 int HS20_INDICATION_OUI_TYPE ;
 int OUI_WFA ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int WPA_PUT_BE24 (int*,int ) ;
 int WPA_PUT_LE16 (int*,int ) ;

u8 * hostapd_eid_hs20_indication(struct hostapd_data *hapd, u8 *eid)
{
 u8 conf;
 if (!hapd->conf->hs20)
  return eid;
 *eid++ = WLAN_EID_VENDOR_SPECIFIC;
 *eid++ = hapd->conf->hs20_release < 2 ? 5 : 7;
 WPA_PUT_BE24(eid, OUI_WFA);
 eid += 3;
 *eid++ = HS20_INDICATION_OUI_TYPE;
 conf = (hapd->conf->hs20_release - 1) << 4;
 if (hapd->conf->hs20_release >= 2)
  conf |= HS20_ANQP_DOMAIN_ID_PRESENT;
 if (hapd->conf->disable_dgaf)
  conf |= HS20_DGAF_DISABLED;
 *eid++ = conf;
 if (hapd->conf->hs20_release >= 2) {
  WPA_PUT_LE16(eid, hapd->conf->anqp_domain_id);
  eid += 2;
 }

 return eid;
}
