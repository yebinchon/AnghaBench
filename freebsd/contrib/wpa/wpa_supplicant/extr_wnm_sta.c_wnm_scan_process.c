
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int wnm_dialog_token; scalar_t__ wnm_reply; TYPE_1__* current_bss; int wnm_cand_from_bss; int scan_trigger_time; int wnm_cand_valid_until; int wnm_neighbor_report_elements; struct wpa_ssid* current_ssid; } ;
struct wpa_ssid {int dummy; } ;
struct wpa_bss {int dummy; } ;
typedef enum mbo_transition_reject_reason { ____Placeholder_mbo_transition_reject_reason } mbo_transition_reject_reason ;
typedef enum bss_trans_mgmt_status_code { ____Placeholder_bss_trans_mgmt_status_code } bss_trans_mgmt_status_code ;
struct TYPE_2__ {int bssid; } ;


 int ETH_ALEN ;
 int MBO_TRANSITION_REJECT_REASON_UNSPECIFIED ;
 int MSG_DEBUG ;
 int WNM_BSS_TM_REJECT_NO_SUITABLE_CANDIDATES ;
 int WNM_BSS_TM_REJECT_UNSPECIFIED ;
 struct wpa_bss* compare_scan_neighbor_results (struct wpa_supplicant*,int ,int*) ;
 scalar_t__ os_memcmp (int ,int ,int ) ;
 scalar_t__ os_reltime_before (int *,int *) ;
 int wnm_bss_tm_connect (struct wpa_supplicant*,struct wpa_bss*,struct wpa_ssid*,int) ;
 int wnm_deallocate_memory (struct wpa_supplicant*) ;
 int wnm_send_bss_transition_mgmt_resp (struct wpa_supplicant*,int ,int,int,int ,int *) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpa_printf (int ,char*) ;

int wnm_scan_process(struct wpa_supplicant *wpa_s, int reply_on_fail)
{
 struct wpa_bss *bss;
 struct wpa_ssid *ssid = wpa_s->current_ssid;
 enum bss_trans_mgmt_status_code status = WNM_BSS_TM_REJECT_UNSPECIFIED;
 enum mbo_transition_reject_reason reason =
  MBO_TRANSITION_REJECT_REASON_UNSPECIFIED;

 if (!wpa_s->wnm_neighbor_report_elements)
  return 0;

 wpa_dbg(wpa_s, MSG_DEBUG,
  "WNM: Process scan results for BSS Transition Management");
 if (os_reltime_before(&wpa_s->wnm_cand_valid_until,
         &wpa_s->scan_trigger_time)) {
  wpa_printf(MSG_DEBUG, "WNM: Previously stored BSS transition candidate list is not valid anymore - drop it");
  wnm_deallocate_memory(wpa_s);
  return 0;
 }

 if (!wpa_s->current_bss ||
     os_memcmp(wpa_s->wnm_cand_from_bss, wpa_s->current_bss->bssid,
        ETH_ALEN) != 0) {
  wpa_printf(MSG_DEBUG, "WNM: Stored BSS transition candidate list not from the current BSS - ignore it");
  return 0;
 }


 bss = compare_scan_neighbor_results(wpa_s, 0, &reason);
 if (!bss) {
  wpa_printf(MSG_DEBUG, "WNM: No BSS transition candidate match found");
  status = WNM_BSS_TM_REJECT_NO_SUITABLE_CANDIDATES;
  goto send_bss_resp_fail;
 }


 wnm_bss_tm_connect(wpa_s, bss, ssid, 1);
 return 1;

send_bss_resp_fail:
 if (!reply_on_fail)
  return 0;



 if (wpa_s->wnm_reply) {
  wpa_s->wnm_reply = 0;
  wnm_send_bss_transition_mgmt_resp(wpa_s,
        wpa_s->wnm_dialog_token,
        status, reason, 0, ((void*)0));
 }
 wnm_deallocate_memory(wpa_s);

 return 0;
}
