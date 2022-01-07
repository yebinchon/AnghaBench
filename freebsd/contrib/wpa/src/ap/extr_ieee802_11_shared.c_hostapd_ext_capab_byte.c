
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {TYPE_4__* conf; TYPE_2__* iface; TYPE_1__* iconf; } ;
struct TYPE_7__ {int utf8_ssid; } ;
struct TYPE_8__ {int time_advertisement; int tdls; int wpa; int wpa_key_mgmt; int ftm_initiator; int ftm_responder; TYPE_3__ ssid; int mbo_enabled; int hs20; int qos_map_set_len; int interworking; int bss_transition; int wnm_sleep_mode; int coloc_intf_reporting; int proxy_arp; } ;
struct TYPE_6__ {int drv_flags; } ;
struct TYPE_5__ {int obss_interval; } ;


 int TDLS_PROHIBIT ;
 int TDLS_PROHIBIT_CHAN_SWITCH ;
 int WPA_DRIVER_FLAGS_AP_CSA ;
 int WPA_PROTO_RSN ;
 int hostapd_sae_pw_id_in_use (TYPE_4__*) ;
 int wpa_key_mgmt_fils (int ) ;
 int wpa_key_mgmt_sae (int ) ;

__attribute__((used)) static void hostapd_ext_capab_byte(struct hostapd_data *hapd, u8 *pos, int idx)
{
 *pos = 0x00;

 switch (idx) {
 case 0:
  if (hapd->iconf->obss_interval)
   *pos |= 0x01;
  if (hapd->iface->drv_flags & WPA_DRIVER_FLAGS_AP_CSA)
   *pos |= 0x04;
  break;
 case 1:
  if (hapd->conf->proxy_arp)
   *pos |= 0x10;
  if (hapd->conf->coloc_intf_reporting) {

   *pos |= 0x20;
  }
  break;
 case 2:
  if (hapd->conf->wnm_sleep_mode)
   *pos |= 0x02;
  if (hapd->conf->bss_transition)
   *pos |= 0x08;
  break;
 case 3:



  if (hapd->conf->time_advertisement == 2)
   *pos |= 0x08;
  if (hapd->conf->interworking)
   *pos |= 0x80;
  break;
 case 4:
  if (hapd->conf->qos_map_set_len)
   *pos |= 0x01;
  if (hapd->conf->tdls & TDLS_PROHIBIT)
   *pos |= 0x40;
  if (hapd->conf->tdls & TDLS_PROHIBIT_CHAN_SWITCH) {

   *pos |= 0x80;
  }
  break;
 case 5:
  break;
 case 6:
  if (hapd->conf->ssid.utf8_ssid)
   *pos |= 0x01;
  break;
 case 7:
  break;
 case 8:
  if (hapd->conf->ftm_responder)
   *pos |= 0x40;
  if (hapd->conf->ftm_initiator)
   *pos |= 0x80;
  break;
 case 9:





  break;
 case 10:
  break;
 }
}
