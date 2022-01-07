
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ieee80211_ht_capabilities {int ht_capabilities_info; } ;
struct hostapd_data {TYPE_1__* iconf; } ;
struct TYPE_2__ {int ht_capab; } ;


 int HT_CAP_INFO_RX_STBC_MASK ;
 int HT_CAP_INFO_SMPS_MASK ;
 int HT_CAP_INFO_TX_STBC ;
 int host_to_le16 (int) ;
 int le_to_host16 (int ) ;
 int os_memcpy (struct ieee80211_ht_capabilities*,struct ieee80211_ht_capabilities*,int) ;

void hostapd_get_ht_capab(struct hostapd_data *hapd,
     struct ieee80211_ht_capabilities *ht_cap,
     struct ieee80211_ht_capabilities *neg_ht_cap)
{
 u16 cap;

 if (ht_cap == ((void*)0))
  return;
 os_memcpy(neg_ht_cap, ht_cap, sizeof(*neg_ht_cap));
 cap = le_to_host16(neg_ht_cap->ht_capabilities_info);






 cap &= (hapd->iconf->ht_capab | HT_CAP_INFO_RX_STBC_MASK |
  HT_CAP_INFO_TX_STBC | HT_CAP_INFO_SMPS_MASK);






 if (!(hapd->iconf->ht_capab & HT_CAP_INFO_RX_STBC_MASK))
  cap &= ~HT_CAP_INFO_TX_STBC;
 if (!(hapd->iconf->ht_capab & HT_CAP_INFO_TX_STBC))
  cap &= ~HT_CAP_INFO_RX_STBC_MASK;

 neg_ht_cap->ht_capabilities_info = host_to_le16(cap);
}
