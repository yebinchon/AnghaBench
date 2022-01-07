
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int tx_map; int rx_map; } ;
struct ieee80211_vht_capabilities {TYPE_1__ vht_supported_mcs_set; } ;
struct hostapd_hw_modes {int vht_mcs_set; } ;


 int MSG_DEBUG ;
 int VHT_RX_NSS_MAX_STREAMS ;
 int le_to_host16 (int ) ;
 int os_memcpy (TYPE_1__*,int ,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int check_valid_vht_mcs(struct hostapd_hw_modes *mode,
          const u8 *sta_vht_capab)
{
 const struct ieee80211_vht_capabilities *vht_cap;
 struct ieee80211_vht_capabilities ap_vht_cap;
 u16 sta_rx_mcs_set, ap_tx_mcs_set;
 int i;

 if (!mode)
  return 1;







 os_memcpy(&ap_vht_cap.vht_supported_mcs_set, mode->vht_mcs_set,
    sizeof(ap_vht_cap.vht_supported_mcs_set));
 vht_cap = (const struct ieee80211_vht_capabilities *) sta_vht_capab;


 sta_rx_mcs_set = le_to_host16(vht_cap->vht_supported_mcs_set.rx_map);
 ap_tx_mcs_set = le_to_host16(ap_vht_cap.vht_supported_mcs_set.tx_map);

 for (i = 0; i < VHT_RX_NSS_MAX_STREAMS; i++) {
  if ((ap_tx_mcs_set & (0x3 << (i * 2))) == 3)
   continue;

  if ((sta_rx_mcs_set & (0x3 << (i * 2))) == 3)
   continue;

  return 1;
 }

 wpa_printf(MSG_DEBUG,
     "No matching VHT MCS found between AP TX and STA RX");
 return 0;
}
