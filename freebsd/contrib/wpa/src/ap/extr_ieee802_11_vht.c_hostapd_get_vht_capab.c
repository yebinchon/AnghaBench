
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_vht_capabilities {int vht_capabilities_info; } ;
struct hostapd_data {TYPE_1__* iconf; } ;
struct TYPE_2__ {int vht_capab; } ;


 int VHT_CAP_BEAMFORMEE_STS_MAX ;
 int VHT_CAP_MU_BEAMFORMEE_CAPABLE ;
 int VHT_CAP_MU_BEAMFORMER_CAPABLE ;
 int VHT_CAP_RXSTBC_MASK ;
 int VHT_CAP_SHORT_GI_160 ;
 int VHT_CAP_SHORT_GI_80 ;
 int VHT_CAP_SOUNDING_DIMENSION_MAX ;


 int VHT_CAP_SUPP_CHAN_WIDTH_MASK ;
 int VHT_CAP_SU_BEAMFORMEE_CAPABLE ;
 int VHT_CAP_SU_BEAMFORMER_CAPABLE ;
 int VHT_CAP_TXSTBC ;
 int host_to_le32 (int) ;
 int le_to_host32 (int ) ;
 int os_memcpy (struct ieee80211_vht_capabilities*,struct ieee80211_vht_capabilities*,int) ;

void hostapd_get_vht_capab(struct hostapd_data *hapd,
      struct ieee80211_vht_capabilities *vht_cap,
      struct ieee80211_vht_capabilities *neg_vht_cap)
{
 u32 cap, own_cap, sym_caps;

 if (vht_cap == ((void*)0))
  return;
 os_memcpy(neg_vht_cap, vht_cap, sizeof(*neg_vht_cap));

 cap = le_to_host32(neg_vht_cap->vht_capabilities_info);
 own_cap = hapd->iconf->vht_capab;


 sym_caps = VHT_CAP_SHORT_GI_80 | VHT_CAP_SHORT_GI_160;
 cap &= ~sym_caps | (own_cap & sym_caps);


 if (!(own_cap & VHT_CAP_SU_BEAMFORMER_CAPABLE))
  cap &= ~(VHT_CAP_SU_BEAMFORMEE_CAPABLE |
    VHT_CAP_BEAMFORMEE_STS_MAX);

 if (!(own_cap & VHT_CAP_SU_BEAMFORMEE_CAPABLE))
  cap &= ~(VHT_CAP_SU_BEAMFORMER_CAPABLE |
    VHT_CAP_SOUNDING_DIMENSION_MAX);

 if (!(own_cap & VHT_CAP_MU_BEAMFORMER_CAPABLE))
  cap &= ~VHT_CAP_MU_BEAMFORMEE_CAPABLE;

 if (!(own_cap & VHT_CAP_MU_BEAMFORMEE_CAPABLE))
  cap &= ~VHT_CAP_MU_BEAMFORMER_CAPABLE;


 switch (own_cap & VHT_CAP_SUPP_CHAN_WIDTH_MASK) {
 case 128:
  break;
 case 129:
  if (cap & 128) {
   cap &= ~128;
   cap |= 129;
  }
  break;
 default:
  cap &= ~VHT_CAP_SUPP_CHAN_WIDTH_MASK;
  break;
 }

 if (!(cap & VHT_CAP_SUPP_CHAN_WIDTH_MASK))
  cap &= ~VHT_CAP_SHORT_GI_160;





 if (!(own_cap & VHT_CAP_RXSTBC_MASK))
  cap &= ~VHT_CAP_TXSTBC;
 if (!(own_cap & VHT_CAP_TXSTBC))
  cap &= ~VHT_CAP_RXSTBC_MASK;

 neg_vht_cap->vht_capabilities_info = host_to_le32(cap);
}
