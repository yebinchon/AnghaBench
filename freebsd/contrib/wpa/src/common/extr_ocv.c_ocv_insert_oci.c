
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct wpa_channel_info {int seg1_idx; int sec_channel; int chanwidth; int frequency; } ;


 int MSG_WARNING ;
 scalar_t__ ieee80211_chaninfo_to_channel (int ,int ,int ,void**,void**) ;
 int wpa_printf (int ,char*) ;

int ocv_insert_oci(struct wpa_channel_info *ci, u8 **argpos)
{
 u8 op_class, channel;
 u8 *pos = *argpos;

 if (ieee80211_chaninfo_to_channel(ci->frequency, ci->chanwidth,
       ci->sec_channel,
       &op_class, &channel) < 0) {
  wpa_printf(MSG_WARNING,
      "Cannot determine operating class and channel for OCI element");
  return -1;
 }

 *pos++ = op_class;
 *pos++ = channel;
 *pos++ = ci->seg1_idx;

 *argpos = pos;
 return 0;
}
