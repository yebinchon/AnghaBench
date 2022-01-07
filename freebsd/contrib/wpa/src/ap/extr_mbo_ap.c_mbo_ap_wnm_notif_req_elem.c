
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {int dummy; } ;


 int MSG_DEBUG ;


 int mbo_ap_parse_non_pref_chan (struct sta_info*,int const*,size_t) ;
 int mbo_ap_sta_free (struct sta_info*) ;
 int mbo_ap_wnm_notif_req_cell_capa (struct sta_info*,int const*,size_t) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static void mbo_ap_wnm_notif_req_elem(struct sta_info *sta, u8 type,
          const u8 *buf, size_t len,
          int *first_non_pref_chan)
{
 switch (type) {
 case 128:
  if (*first_non_pref_chan) {




   *first_non_pref_chan = 0;
   mbo_ap_sta_free(sta);
  }
  mbo_ap_parse_non_pref_chan(sta, buf, len);
  break;
 case 129:
  mbo_ap_wnm_notif_req_cell_capa(sta, buf, len);
  break;
 default:
  wpa_printf(MSG_DEBUG,
      "MBO: Ignore unknown WNM Notification WFA subelement %u",
      type);
  break;
 }
}
