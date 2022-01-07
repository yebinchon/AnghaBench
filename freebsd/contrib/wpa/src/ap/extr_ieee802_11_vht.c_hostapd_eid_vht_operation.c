
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_vht_operation {int vht_op_info_chan_center_freq_seg0_idx; int vht_op_info_chan_center_freq_seg1_idx; int vht_op_info_chwidth; int vht_basic_mcs_set; } ;
struct hostapd_data {TYPE_1__* iconf; } ;
struct TYPE_2__ {int vht_oper_centr_freq_seg0_idx; int vht_oper_centr_freq_seg1_idx; int vht_oper_chwidth; scalar_t__ channel; } ;


 int WLAN_EID_VHT_OPERATION ;
 int host_to_le16 (int) ;
 int os_memset (struct ieee80211_vht_operation*,int ,int) ;

u8 * hostapd_eid_vht_operation(struct hostapd_data *hapd, u8 *eid)
{
 struct ieee80211_vht_operation *oper;
 u8 *pos = eid;

 *pos++ = WLAN_EID_VHT_OPERATION;
 *pos++ = sizeof(*oper);

 oper = (struct ieee80211_vht_operation *) pos;
 os_memset(oper, 0, sizeof(*oper));






 oper->vht_op_info_chan_center_freq_seg0_idx =
  hapd->iconf->vht_oper_centr_freq_seg0_idx;
 oper->vht_op_info_chan_center_freq_seg1_idx =
  hapd->iconf->vht_oper_centr_freq_seg1_idx;

 oper->vht_op_info_chwidth = hapd->iconf->vht_oper_chwidth;
 if (hapd->iconf->vht_oper_chwidth == 2) {




  oper->vht_op_info_chwidth = 1;
  oper->vht_op_info_chan_center_freq_seg1_idx =
   oper->vht_op_info_chan_center_freq_seg0_idx;
  if (hapd->iconf->channel <
      hapd->iconf->vht_oper_centr_freq_seg0_idx)
   oper->vht_op_info_chan_center_freq_seg0_idx -= 8;
  else
   oper->vht_op_info_chan_center_freq_seg0_idx += 8;
 } else if (hapd->iconf->vht_oper_chwidth == 3) {




  oper->vht_op_info_chwidth = 1;
 }



 oper->vht_basic_mcs_set = host_to_le16(0xfffc);
 pos += sizeof(*oper);

 return pos;
}
