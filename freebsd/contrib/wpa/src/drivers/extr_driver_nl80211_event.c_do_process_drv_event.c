
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct wpa_driver_nl80211_data {scalar_t__ ap_scan_as_station; int last_scan_cmd; int scan_complete_events; int ctx; int scan_state; int scan_for_auth; int first_bss; TYPE_1__ capa; } ;
struct nlattr {int dummy; } ;
struct i802_bss {int ifname; struct wpa_driver_nl80211_data* drv; } ;


 int EVENT_SCAN_STARTED ;
 int EVENT_SCHED_SCAN_STOPPED ;
 int MSG_DEBUG ;
 size_t NL80211_ATTR_ACK ;
 size_t NL80211_ATTR_CENTER_FREQ1 ;
 size_t NL80211_ATTR_CENTER_FREQ2 ;
 size_t NL80211_ATTR_CHANNEL_WIDTH ;
 size_t NL80211_ATTR_COOKIE ;
 size_t NL80211_ATTR_DISCONNECTED_BY_AP ;
 size_t NL80211_ATTR_FILS_ERP_NEXT_SEQ_NUM ;
 size_t NL80211_ATTR_FILS_KEK ;
 size_t NL80211_ATTR_FRAME ;
 size_t NL80211_ATTR_IFINDEX ;
 size_t NL80211_ATTR_MAC ;
 size_t NL80211_ATTR_PMK ;
 size_t NL80211_ATTR_PMKID ;
 size_t NL80211_ATTR_REASON_CODE ;
 size_t NL80211_ATTR_REQ_IE ;
 size_t NL80211_ATTR_RESP_IE ;
 size_t NL80211_ATTR_RX_SIGNAL_DBM ;
 size_t NL80211_ATTR_STATUS_CODE ;
 size_t NL80211_ATTR_STA_WME ;
 size_t NL80211_ATTR_TIMED_OUT ;
 size_t NL80211_ATTR_TIMEOUT_REASON ;
 size_t NL80211_ATTR_WIPHY_CHANNEL_TYPE ;
 size_t NL80211_ATTR_WIPHY_FREQ ;
 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ;
 int SCAN_ABORTED ;
 int SCAN_COMPLETED ;
 int SCAN_STARTED ;
 int SCHED_SCAN_RESULTS ;
 int SCHED_SCAN_STARTED ;
 int SCHED_SCAN_STOPPED ;
 int WPA_DRIVER_FLAGS_KEY_MGMT_OFFLOAD ;
 int eloop_cancel_timeout (int ,struct wpa_driver_nl80211_data*,int ) ;
 int mlme_event (struct i802_bss*,int,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*) ;
 int mlme_event_ch_switch (struct wpa_driver_nl80211_data*,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,int) ;
 int mlme_event_connect (struct wpa_driver_nl80211_data*,int,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,int *,int *,int *,struct nlattr*,int *,struct nlattr*,struct nlattr*,struct nlattr*) ;
 int mlme_event_dh_event (struct wpa_driver_nl80211_data*,struct i802_bss*,struct nlattr**) ;
 int mlme_event_disconnect (struct wpa_driver_nl80211_data*,struct nlattr*,struct nlattr*,struct nlattr*) ;
 int mlme_event_ft_event (struct wpa_driver_nl80211_data*,struct nlattr**) ;
 int mlme_event_join_ibss (struct wpa_driver_nl80211_data*,struct nlattr**) ;
 int mlme_event_michael_mic_failure (struct i802_bss*,struct nlattr**) ;
 int mlme_event_remain_on_channel (struct wpa_driver_nl80211_data*,int,struct nlattr**) ;
 int nl80211_client_probe_event (struct wpa_driver_nl80211_data*,struct nlattr**) ;
 int nl80211_command_to_string (int) ;
 int nl80211_connect_failed_event (struct wpa_driver_nl80211_data*,struct nlattr**) ;
 int nl80211_cqm_event (struct wpa_driver_nl80211_data*,struct nlattr**) ;
 int nl80211_del_station_event (struct wpa_driver_nl80211_data*,struct i802_bss*,struct nlattr**) ;
 int nl80211_new_peer_candidate (struct wpa_driver_nl80211_data*,struct nlattr**) ;
 int nl80211_new_station_event (struct wpa_driver_nl80211_data*,struct i802_bss*,struct nlattr**) ;
 int nl80211_pmksa_candidate_event (struct wpa_driver_nl80211_data*,struct nlattr**) ;
 int nl80211_port_authorized (struct wpa_driver_nl80211_data*,struct nlattr**) ;
 int nl80211_radar_event (struct wpa_driver_nl80211_data*,struct nlattr**) ;
 int nl80211_reg_beacon_hint_event (struct wpa_driver_nl80211_data*,struct nlattr**) ;
 int nl80211_reg_change_event (struct wpa_driver_nl80211_data*,struct nlattr**) ;
 int nl80211_rekey_offload_event (struct wpa_driver_nl80211_data*,struct nlattr**) ;
 int nl80211_sta_opmode_change_event (struct wpa_driver_nl80211_data*,struct nlattr**) ;
 int nl80211_stop_ap (struct wpa_driver_nl80211_data*,struct nlattr**) ;
 int nl80211_tdls_oper_event (struct wpa_driver_nl80211_data*,struct nlattr**) ;
 int nl80211_vendor_event (struct wpa_driver_nl80211_data*,struct nlattr**) ;
 int send_scan_event (struct wpa_driver_nl80211_data*,int,struct nlattr**,int) ;
 int wpa_dbg (int ,int ,char*,...) ;
 int wpa_driver_nl80211_scan_timeout ;
 int wpa_driver_nl80211_set_mode (int ,scalar_t__) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_supplicant_event (int ,int ,int *) ;

__attribute__((used)) static void do_process_drv_event(struct i802_bss *bss, int cmd,
     struct nlattr **tb)
{
 struct wpa_driver_nl80211_data *drv = bss->drv;
 int external_scan_event = 0;

 wpa_printf(MSG_DEBUG, "nl80211: Drv Event %d (%s) received for %s",
     cmd, nl80211_command_to_string(cmd), bss->ifname);

 if (cmd == 142 &&
     (drv->capa.flags & WPA_DRIVER_FLAGS_KEY_MGMT_OFFLOAD)) {




  wpa_printf(MSG_DEBUG,
      "nl80211: Ignore roam event (cmd=%d), device will use vendor event roam+auth",
      cmd);
  return;
 }

 if (drv->ap_scan_as_station != NL80211_IFTYPE_UNSPECIFIED &&
     (cmd == 152 ||
      cmd == 141)) {
  wpa_driver_nl80211_set_mode(drv->first_bss,
         drv->ap_scan_as_station);
  drv->ap_scan_as_station = NL80211_IFTYPE_UNSPECIFIED;
 }

 switch (cmd) {
 case 133:
  wpa_dbg(drv->ctx, MSG_DEBUG, "nl80211: Scan trigger");
  drv->scan_state = SCAN_STARTED;
  if (drv->scan_for_auth) {






   wpa_printf(MSG_DEBUG, "nl80211: Do not indicate scan-start event due to internal scan_for_auth");
   break;
  }
  wpa_supplicant_event(drv->ctx, EVENT_SCAN_STARTED, ((void*)0));
  break;
 case 137:
  wpa_dbg(drv->ctx, MSG_DEBUG, "nl80211: Sched scan started");
  drv->scan_state = SCHED_SCAN_STARTED;
  break;
 case 139:
  wpa_dbg(drv->ctx, MSG_DEBUG, "nl80211: Sched scan stopped");
  drv->scan_state = SCHED_SCAN_STOPPED;
  wpa_supplicant_event(drv->ctx, EVENT_SCHED_SCAN_STOPPED, ((void*)0));
  break;
 case 152:
  wpa_dbg(drv->ctx, MSG_DEBUG,
   "nl80211: New scan results available");
  if (drv->last_scan_cmd != 129)
   drv->scan_state = SCAN_COMPLETED;
  drv->scan_complete_events = 1;
  if (drv->last_scan_cmd == 133) {
   eloop_cancel_timeout(wpa_driver_nl80211_scan_timeout,
          drv, drv->ctx);
   drv->last_scan_cmd = 0;
  } else {
   external_scan_event = 1;
  }
  send_scan_event(drv, 0, tb, external_scan_event);
  break;
 case 140:
  wpa_dbg(drv->ctx, MSG_DEBUG,
   "nl80211: New sched scan results available");
  drv->scan_state = SCHED_SCAN_RESULTS;
  send_scan_event(drv, 0, tb, 0);
  break;
 case 141:
  wpa_dbg(drv->ctx, MSG_DEBUG, "nl80211: Scan aborted");
  if (drv->last_scan_cmd != 129)
   drv->scan_state = SCAN_ABORTED;
  if (drv->last_scan_cmd == 133) {




   eloop_cancel_timeout(wpa_driver_nl80211_scan_timeout,
          drv, drv->ctx);
   drv->last_scan_cmd = 0;
  } else {
   external_scan_event = 1;
  }
  send_scan_event(drv, 1, tb, external_scan_event);
  break;
 case 167:
 case 168:
 case 161:
 case 159:
 case 157:
 case 132:
 case 131:
  mlme_event(bss, cmd, tb[NL80211_ATTR_FRAME],
      tb[NL80211_ATTR_MAC], tb[NL80211_ATTR_TIMED_OUT],
      tb[NL80211_ATTR_WIPHY_FREQ], tb[NL80211_ATTR_ACK],
      tb[NL80211_ATTR_COOKIE],
      tb[NL80211_ATTR_RX_SIGNAL_DBM],
      tb[NL80211_ATTR_STA_WME],
      tb[NL80211_ATTR_REQ_IE]);
  break;
 case 163:
 case 142:
  mlme_event_connect(drv, cmd,
       tb[NL80211_ATTR_STATUS_CODE],
       tb[NL80211_ATTR_MAC],
       tb[NL80211_ATTR_REQ_IE],
       tb[NL80211_ATTR_RESP_IE],
       tb[NL80211_ATTR_TIMED_OUT],
       tb[NL80211_ATTR_TIMEOUT_REASON],
       ((void*)0), ((void*)0), ((void*)0),
       tb[NL80211_ATTR_FILS_KEK],
       ((void*)0),
       tb[NL80211_ATTR_FILS_ERP_NEXT_SEQ_NUM],
       tb[NL80211_ATTR_PMK],
       tb[NL80211_ATTR_PMKID]);
  break;
 case 164:
  mlme_event_ch_switch(drv,
         tb[NL80211_ATTR_IFINDEX],
         tb[NL80211_ATTR_WIPHY_FREQ],
         tb[NL80211_ATTR_WIPHY_CHANNEL_TYPE],
         tb[NL80211_ATTR_CHANNEL_WIDTH],
         tb[NL80211_ATTR_CENTER_FREQ1],
         tb[NL80211_ATTR_CENTER_FREQ2],
         0);
  break;
 case 165:
  mlme_event_ch_switch(drv,
         tb[NL80211_ATTR_IFINDEX],
         tb[NL80211_ATTR_WIPHY_FREQ],
         tb[NL80211_ATTR_WIPHY_CHANNEL_TYPE],
         tb[NL80211_ATTR_CHANNEL_WIDTH],
         tb[NL80211_ATTR_CENTER_FREQ1],
         tb[NL80211_ATTR_CENTER_FREQ2],
         1);
  break;
 case 158:
  mlme_event_disconnect(drv, tb[NL80211_ATTR_REASON_CODE],
          tb[NL80211_ATTR_MAC],
          tb[NL80211_ATTR_DISCONNECTED_BY_AP]);
  break;
 case 154:
  mlme_event_michael_mic_failure(bss, tb);
  break;
 case 155:
  mlme_event_join_ibss(drv, tb);
  break;
 case 143:
  mlme_event_remain_on_channel(drv, 0, tb);
  break;
 case 166:
  mlme_event_remain_on_channel(drv, 1, tb);
  break;
 case 150:
  nl80211_cqm_event(drv, tb);
  break;
 case 144:
 case 128:
  nl80211_reg_change_event(drv, tb);
  break;
 case 145:
  nl80211_reg_beacon_hint_event(drv, tb);
  break;
 case 151:
  nl80211_new_station_event(drv, bss, tb);
  break;
 case 160:
  nl80211_del_station_event(drv, bss, tb);
  break;
 case 138:
  nl80211_rekey_offload_event(drv, tb);
  break;
 case 149:
  nl80211_pmksa_candidate_event(drv, tb);
  break;
 case 147:
  nl80211_client_probe_event(drv, tb);
  break;
 case 134:
  nl80211_tdls_oper_event(drv, tb);
  break;
 case 162:
  nl80211_connect_failed_event(drv, tb);
  break;
 case 156:
  mlme_event_ft_event(drv, tb);
  break;
 case 146:
  nl80211_radar_event(drv, tb);
  break;
 case 135:
  nl80211_stop_ap(drv, tb);
  break;
 case 129:
  nl80211_vendor_event(drv, tb);
  break;
 case 153:
  nl80211_new_peer_candidate(drv, tb);
  break;
 case 148:
  nl80211_port_authorized(drv, tb);
  break;
 case 136:
  nl80211_sta_opmode_change_event(drv, tb);
  break;
 case 130:
  mlme_event_dh_event(drv, bss, tb);
  break;
 default:
  wpa_dbg(drv->ctx, MSG_DEBUG, "nl80211: Ignored unknown event "
   "(cmd=%d)", cmd);
  break;
 }
}
