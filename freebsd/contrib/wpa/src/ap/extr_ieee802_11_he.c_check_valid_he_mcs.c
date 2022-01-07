
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ieee80211_he_capabilities {scalar_t__ optional; } ;
struct hostapd_data {TYPE_4__* iface; } ;
typedef enum ieee80211_op_mode { ____Placeholder_ieee80211_op_mode } ieee80211_op_mode ;
struct TYPE_8__ {TYPE_3__* conf; TYPE_2__* current_mode; } ;
struct TYPE_7__ {int he_oper_chwidth; } ;
struct TYPE_6__ {TYPE_1__* he_capab; } ;
struct TYPE_5__ {scalar_t__ mcs; } ;




 int HE_NSS_MAX_STREAMS ;
 int MSG_DEBUG ;
 int WPA_GET_LE16 (int const*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int check_valid_he_mcs(struct hostapd_data *hapd, const u8 *sta_he_capab,
         enum ieee80211_op_mode opmode)
{
 u16 sta_rx_mcs_set, ap_tx_mcs_set;
 u8 mcs_count = 0;
 const u16 *ap_mcs_set, *sta_mcs_set;
 int i;

 if (!hapd->iface->current_mode)
  return 1;
 ap_mcs_set = (u16 *) hapd->iface->current_mode->he_capab[opmode].mcs;
 sta_mcs_set = (u16 *) ((const struct ieee80211_he_capabilities *)
          sta_he_capab)->optional;







 switch (hapd->iface->conf->he_oper_chwidth) {
 case 128:
  mcs_count = 3;
  break;
 case 129:
  mcs_count = 2;
  break;
 default:
  mcs_count = 1;
  break;
 }

 for (i = 0; i < mcs_count; i++) {
  int j;


  sta_rx_mcs_set = WPA_GET_LE16((const u8 *) &sta_mcs_set[i * 2]);
  ap_tx_mcs_set = WPA_GET_LE16((const u8 *)
          &ap_mcs_set[(i * 2) + 1]);

  for (j = 0; j < HE_NSS_MAX_STREAMS; j++) {
   if (((ap_tx_mcs_set >> (j * 2)) & 0x3) == 3)
    continue;

   if (((sta_rx_mcs_set >> (j * 2)) & 0x3) == 3)
    continue;

   return 1;
  }
 }

 wpa_printf(MSG_DEBUG,
     "No matching HE MCS found between AP TX and STA RX");

 return 0;
}
