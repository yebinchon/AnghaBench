
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {TYPE_3__* iface; TYPE_4__* conf; TYPE_1__* iconf; } ;
struct TYPE_6__ {scalar_t__ utf8_ssid; } ;
struct TYPE_8__ {int tdls; int wpa; int wpa_key_mgmt; scalar_t__ mbo_enabled; scalar_t__ hs20; scalar_t__ ftm_responder; scalar_t__ ftm_initiator; TYPE_2__ ssid; scalar_t__ wnm_sleep_mode; scalar_t__ interworking; } ;
struct TYPE_7__ {int extended_capa_len; int* extended_capa_mask; int* extended_capa; } ;
struct TYPE_5__ {scalar_t__ obss_interval; } ;


 int TDLS_PROHIBIT ;
 int TDLS_PROHIBIT_CHAN_SWITCH ;
 int WLAN_EID_EXT_CAPAB ;
 int WPA_PROTO_RSN ;
 int hostapd_ext_capab_byte (struct hostapd_data*,int*,int) ;
 scalar_t__ hostapd_sae_pw_id_in_use (TYPE_4__*) ;
 int wpa_key_mgmt_fils (int ) ;
 scalar_t__ wpa_key_mgmt_sae (int ) ;

u8 * hostapd_eid_ext_capab(struct hostapd_data *hapd, u8 *eid)
{
 u8 *pos = eid;
 u8 len = 0, i;

 if (hapd->conf->tdls & (TDLS_PROHIBIT | TDLS_PROHIBIT_CHAN_SWITCH))
  len = 5;
 if (len < 4 && hapd->conf->interworking)
  len = 4;
 if (len < 3 && hapd->conf->wnm_sleep_mode)
  len = 3;
 if (len < 1 && hapd->iconf->obss_interval)
  len = 1;
 if (len < 7 && hapd->conf->ssid.utf8_ssid)
  len = 7;
 if (len < 9 &&
     (hapd->conf->ftm_initiator || hapd->conf->ftm_responder))
  len = 9;
 if (len < hapd->iface->extended_capa_len)
  len = hapd->iface->extended_capa_len;
 if (len == 0)
  return eid;

 *pos++ = WLAN_EID_EXT_CAPAB;
 *pos++ = len;
 for (i = 0; i < len; i++, pos++) {
  hostapd_ext_capab_byte(hapd, pos, i);

  if (i < hapd->iface->extended_capa_len) {
   *pos &= ~hapd->iface->extended_capa_mask[i];
   *pos |= hapd->iface->extended_capa[i];
  }
 }

 while (len > 0 && eid[1 + len] == 0) {
  len--;
  eid[1] = len;
 }
 if (len == 0)
  return eid;

 return eid + 2 + len;
}
