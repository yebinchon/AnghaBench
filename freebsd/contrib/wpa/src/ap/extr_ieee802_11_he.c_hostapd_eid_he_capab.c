
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_he_capabilities {int* he_mac_capab_info; int* he_phy_capab_info; int* optional; } ;
struct hostapd_hw_modes {TYPE_1__* he_capab; } ;
struct hostapd_data {TYPE_4__* iface; } ;
typedef enum ieee80211_op_mode { ____Placeholder_ieee80211_op_mode } ieee80211_op_mode ;
struct TYPE_8__ {TYPE_3__* conf; struct hostapd_hw_modes* current_mode; } ;
struct TYPE_6__ {scalar_t__ he_mu_beamformer; scalar_t__ he_su_beamformee; scalar_t__ he_su_beamformer; } ;
struct TYPE_7__ {int he_oper_chwidth; TYPE_2__ he_phy_capab; } ;
struct TYPE_5__ {int * ppet; int * mcs; int * phy_cap; int * mac_cap; } ;






 int HE_MAX_MAC_CAPAB_SIZE ;
 int HE_MAX_PHY_CAPAB_SIZE ;
 int HE_PHYCAP_CHANNEL_WIDTH_MASK ;
 int HE_PHYCAP_CHANNEL_WIDTH_SET_160MHZ_IN_5G ;
 int HE_PHYCAP_CHANNEL_WIDTH_SET_40MHZ_80MHZ_IN_5G ;
 int HE_PHYCAP_CHANNEL_WIDTH_SET_40MHZ_IN_2G ;
 int HE_PHYCAP_CHANNEL_WIDTH_SET_80PLUS80MHZ_IN_5G ;
 size_t HE_PHYCAP_CHANNEL_WIDTH_SET_IDX ;
 int HE_PHYCAP_MU_BEAMFORMER_CAPAB ;
 size_t HE_PHYCAP_MU_BEAMFORMER_CAPAB_IDX ;
 int HE_PHYCAP_SU_BEAMFORMEE_CAPAB ;
 size_t HE_PHYCAP_SU_BEAMFORMEE_CAPAB_IDX ;
 int HE_PHYCAP_SU_BEAMFORMER_CAPAB ;
 size_t HE_PHYCAP_SU_BEAMFORMER_CAPAB_IDX ;
 int WLAN_EID_EXTENSION ;
 int WLAN_EID_EXT_HE_CAPABILITIES ;
 int ieee80211_he_ppet_size (int ,int *) ;
 int os_memcpy (int*,int *,int) ;
 int os_memset (struct ieee80211_he_capabilities*,int ,int) ;

u8 * hostapd_eid_he_capab(struct hostapd_data *hapd, u8 *eid,
     enum ieee80211_op_mode opmode)
{
 struct ieee80211_he_capabilities *cap;
 struct hostapd_hw_modes *mode = hapd->iface->current_mode;
 u8 he_oper_chwidth = ~HE_PHYCAP_CHANNEL_WIDTH_MASK;
 u8 *pos = eid;
 u8 ie_size = 0, mcs_nss_size = 0, ppet_size = 0;

 if (!mode)
  return eid;

 ie_size = sizeof(struct ieee80211_he_capabilities);
 ppet_size = ieee80211_he_ppet_size(mode->he_capab[opmode].ppet[0],
        mode->he_capab[opmode].phy_cap);

 switch (hapd->iface->conf->he_oper_chwidth) {
 case 129:
  he_oper_chwidth |=
   HE_PHYCAP_CHANNEL_WIDTH_SET_80PLUS80MHZ_IN_5G;
  mcs_nss_size += 4;

 case 131:
  he_oper_chwidth |= HE_PHYCAP_CHANNEL_WIDTH_SET_160MHZ_IN_5G;
  mcs_nss_size += 4;

 case 130:
 case 128:
  he_oper_chwidth |= HE_PHYCAP_CHANNEL_WIDTH_SET_40MHZ_IN_2G |
   HE_PHYCAP_CHANNEL_WIDTH_SET_40MHZ_80MHZ_IN_5G;
  mcs_nss_size += 4;
  break;
 }

 ie_size += mcs_nss_size + ppet_size;

 *pos++ = WLAN_EID_EXTENSION;
 *pos++ = 1 + ie_size;
 *pos++ = WLAN_EID_EXT_HE_CAPABILITIES;

 cap = (struct ieee80211_he_capabilities *) pos;
 os_memset(cap, 0, sizeof(*cap));

 os_memcpy(cap->he_mac_capab_info, mode->he_capab[opmode].mac_cap,
    HE_MAX_MAC_CAPAB_SIZE);
 os_memcpy(cap->he_phy_capab_info, mode->he_capab[opmode].phy_cap,
    HE_MAX_PHY_CAPAB_SIZE);
 os_memcpy(cap->optional, mode->he_capab[opmode].mcs, mcs_nss_size);
 if (ppet_size)
  os_memcpy(&cap->optional[mcs_nss_size],
     mode->he_capab[opmode].ppet, ppet_size);

 if (hapd->iface->conf->he_phy_capab.he_su_beamformer)
  cap->he_phy_capab_info[HE_PHYCAP_SU_BEAMFORMER_CAPAB_IDX] |=
   HE_PHYCAP_SU_BEAMFORMER_CAPAB;
 else
  cap->he_phy_capab_info[HE_PHYCAP_SU_BEAMFORMER_CAPAB_IDX] &=
   ~HE_PHYCAP_SU_BEAMFORMER_CAPAB;

 if (hapd->iface->conf->he_phy_capab.he_su_beamformee)
  cap->he_phy_capab_info[HE_PHYCAP_SU_BEAMFORMEE_CAPAB_IDX] |=
   HE_PHYCAP_SU_BEAMFORMEE_CAPAB;
 else
  cap->he_phy_capab_info[HE_PHYCAP_SU_BEAMFORMEE_CAPAB_IDX] &=
   ~HE_PHYCAP_SU_BEAMFORMEE_CAPAB;

 if (hapd->iface->conf->he_phy_capab.he_mu_beamformer)
  cap->he_phy_capab_info[HE_PHYCAP_MU_BEAMFORMER_CAPAB_IDX] |=
   HE_PHYCAP_MU_BEAMFORMER_CAPAB;
 else
  cap->he_phy_capab_info[HE_PHYCAP_MU_BEAMFORMER_CAPAB_IDX] &=
   ~HE_PHYCAP_MU_BEAMFORMER_CAPAB;

 cap->he_phy_capab_info[HE_PHYCAP_CHANNEL_WIDTH_SET_IDX] &=
  he_oper_chwidth;

 pos += ie_size;

 return pos;
}
