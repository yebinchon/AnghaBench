
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_ht_capabilities {int ht_capabilities_info; } ;
typedef int le16 ;


 int HT_CAP_INFO_SHORT_GI40MHZ ;
 int HT_CAP_INFO_SUPP_CHANNEL_WIDTH_SET ;
 int host_to_le16 (int) ;

void set_disable_ht40(struct ieee80211_ht_capabilities *htcaps,
        int disabled)
{

 le16 msk = host_to_le16(HT_CAP_INFO_SUPP_CHANNEL_WIDTH_SET |
    HT_CAP_INFO_SHORT_GI40MHZ);

 if (disabled)
  htcaps->ht_capabilities_info &= ~msk;
 else
  htcaps->ht_capabilities_info |= msk;
}
