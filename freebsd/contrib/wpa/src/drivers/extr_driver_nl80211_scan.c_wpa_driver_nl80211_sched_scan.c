
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wpa_driver_scan_params {scalar_t__ sched_scan_plans_num; int filter_rssi; int relative_rssi; int relative_adjust_band; int sched_scan_start_delay; scalar_t__ relative_adjust_rssi; scalar_t__ relative_rssi_set; TYPE_1__* sched_scan_plans; } ;
struct TYPE_5__ {scalar_t__ max_sched_scan_plans; int max_match_sets; scalar_t__ max_sched_scan_plan_iterations; int sched_scan_supported; } ;
struct wpa_driver_nl80211_data {size_t num_filter_ssids; TYPE_3__* filter_ssids; TYPE_2__ capa; int ctx; } ;
struct nlattr {int dummy; } ;
struct nl_msg {int dummy; } ;
struct nl80211_bss_select_rssi_adjust {scalar_t__ delta; int band; } ;
struct i802_bss {struct wpa_driver_nl80211_data* drv; } ;
typedef int rssi_adjust ;
struct TYPE_6__ {int ssid_len; struct nl80211_bss_select_rssi_adjust* ssid; } ;
struct TYPE_4__ {int interval; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_MSGDUMP ;
 int NL80211_ATTR_SCHED_SCAN_DELAY ;
 int NL80211_ATTR_SCHED_SCAN_INTERVAL ;
 size_t NL80211_ATTR_SCHED_SCAN_MATCH ;
 int NL80211_ATTR_SCHED_SCAN_MATCH_SSID ;
 int NL80211_ATTR_SCHED_SCAN_RELATIVE_RSSI ;
 int NL80211_ATTR_SCHED_SCAN_RSSI_ADJUST ;
 int NL80211_BAND_2GHZ ;
 int NL80211_BAND_5GHZ ;
 int NL80211_CMD_START_SCHED_SCAN ;
 int NL80211_SCHED_SCAN_MATCH_ATTR_RSSI ;


 int android_pno_start (struct i802_bss*,struct wpa_driver_scan_params*) ;
 struct nl_msg* nl80211_scan_common (struct i802_bss*,int ,struct wpa_driver_scan_params*) ;
 scalar_t__ nl80211_sched_scan_add_scan_plans (struct wpa_driver_nl80211_data*,struct nl_msg*,struct wpa_driver_scan_params*) ;
 int nla_nest_end (struct nl_msg*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct nl_msg*,size_t) ;
 scalar_t__ nla_put (struct nl_msg*,int ,int,struct nl80211_bss_select_rssi_adjust*) ;
 scalar_t__ nla_put_u32 (struct nl_msg*,int ,int) ;
 int nlmsg_free (struct nl_msg*) ;
 int os_memset (struct nl80211_bss_select_rssi_adjust*,int ,int) ;
 int send_and_recv_msgs (struct wpa_driver_nl80211_data*,struct nl_msg*,int *,int *) ;
 int strerror (int) ;
 int wpa_dbg (int ,int ,char*) ;
 int wpa_printf (int ,char*,int,...) ;
 int wpa_ssid_txt (struct nl80211_bss_select_rssi_adjust*,int) ;

int wpa_driver_nl80211_sched_scan(void *priv,
      struct wpa_driver_scan_params *params)
{
 struct i802_bss *bss = priv;
 struct wpa_driver_nl80211_data *drv = bss->drv;
 int ret = -1;
 struct nl_msg *msg;
 size_t i;

 wpa_dbg(drv->ctx, MSG_DEBUG, "nl80211: sched_scan request");






 if (!params->sched_scan_plans_num ||
     params->sched_scan_plans_num > drv->capa.max_sched_scan_plans) {
  wpa_printf(MSG_ERROR,
      "nl80211: Invalid number of sched scan plans: %u",
      params->sched_scan_plans_num);
  return -1;
 }

 msg = nl80211_scan_common(bss, NL80211_CMD_START_SCHED_SCAN, params);
 if (!msg)
  goto fail;

 if (drv->capa.max_sched_scan_plan_iterations) {
  if (nl80211_sched_scan_add_scan_plans(drv, msg, params))
   goto fail;
 } else {
  if (nla_put_u32(msg, NL80211_ATTR_SCHED_SCAN_INTERVAL,
    params->sched_scan_plans[0].interval * 1000))
   goto fail;
 }

 if ((drv->num_filter_ssids &&
     (int) drv->num_filter_ssids <= drv->capa.max_match_sets) ||
     params->filter_rssi) {
  struct nlattr *match_sets;
  match_sets = nla_nest_start(msg, NL80211_ATTR_SCHED_SCAN_MATCH);
  if (match_sets == ((void*)0))
   goto fail;

  for (i = 0; i < drv->num_filter_ssids; i++) {
   struct nlattr *match_set_ssid;
   wpa_printf(MSG_MSGDUMP,
       "nl80211: Sched scan filter SSID %s",
       wpa_ssid_txt(drv->filter_ssids[i].ssid,
      drv->filter_ssids[i].ssid_len));

   match_set_ssid = nla_nest_start(msg, i + 1);
   if (match_set_ssid == ((void*)0) ||
       nla_put(msg, NL80211_ATTR_SCHED_SCAN_MATCH_SSID,
        drv->filter_ssids[i].ssid_len,
        drv->filter_ssids[i].ssid) ||
       (params->filter_rssi &&
        nla_put_u32(msg,
      NL80211_SCHED_SCAN_MATCH_ATTR_RSSI,
      params->filter_rssi)))
    goto fail;

   nla_nest_end(msg, match_set_ssid);
  }







  if (params->filter_rssi) {
   struct nlattr *match_set_rssi;
   match_set_rssi = nla_nest_start(msg, 0);
   if (match_set_rssi == ((void*)0) ||
       nla_put_u32(msg, NL80211_SCHED_SCAN_MATCH_ATTR_RSSI,
     params->filter_rssi))
    goto fail;
   wpa_printf(MSG_MSGDUMP,
       "nl80211: Sched scan RSSI filter %d dBm",
       params->filter_rssi);
   nla_nest_end(msg, match_set_rssi);
  }

  nla_nest_end(msg, match_sets);
 }

 if (params->relative_rssi_set) {
  struct nl80211_bss_select_rssi_adjust rssi_adjust;

  os_memset(&rssi_adjust, 0, sizeof(rssi_adjust));
  wpa_printf(MSG_DEBUG, "nl80211: Relative RSSI: %d",
      params->relative_rssi);
  if (nla_put_u32(msg, NL80211_ATTR_SCHED_SCAN_RELATIVE_RSSI,
    params->relative_rssi))
   goto fail;

  if (params->relative_adjust_rssi) {
   int pref_band_set = 1;

   switch (params->relative_adjust_band) {
   case 128:
    rssi_adjust.band = NL80211_BAND_5GHZ;
    break;
   case 129:
    rssi_adjust.band = NL80211_BAND_2GHZ;
    break;
   default:
    pref_band_set = 0;
    break;
   }
   rssi_adjust.delta = params->relative_adjust_rssi;

   if (pref_band_set &&
       nla_put(msg, NL80211_ATTR_SCHED_SCAN_RSSI_ADJUST,
        sizeof(rssi_adjust), &rssi_adjust))
    goto fail;
  }
 }

 if (params->sched_scan_start_delay &&
     nla_put_u32(msg, NL80211_ATTR_SCHED_SCAN_DELAY,
   params->sched_scan_start_delay))
  goto fail;

 ret = send_and_recv_msgs(drv, msg, ((void*)0), ((void*)0));



 msg = ((void*)0);
 if (ret) {
  wpa_printf(MSG_DEBUG, "nl80211: Sched scan start failed: "
      "ret=%d (%s)", ret, strerror(-ret));
  goto fail;
 }

 wpa_printf(MSG_DEBUG, "nl80211: Sched scan requested (ret=%d)", ret);

fail:
 nlmsg_free(msg);
 return ret;
}
