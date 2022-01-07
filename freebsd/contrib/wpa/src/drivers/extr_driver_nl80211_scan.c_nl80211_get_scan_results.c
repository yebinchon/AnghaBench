
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_scan_results {size_t num; int * res; } ;
struct wpa_driver_nl80211_data {int first_bss; } ;
struct nl_msg {int dummy; } ;
struct nl80211_noise_info {int dummy; } ;
struct nl80211_bss_info_arg {struct wpa_scan_results* res; struct wpa_driver_nl80211_data* drv; } ;


 int MSG_DEBUG ;
 int NL80211_CMD_GET_SCAN ;
 int NLM_F_DUMP ;
 int bss_info_handler ;
 struct nl_msg* nl80211_cmd_msg (int ,int ,int ) ;
 scalar_t__ nl80211_get_noise_for_scan_results (struct wpa_driver_nl80211_data*,struct nl80211_noise_info*) ;
 int nl80211_update_scan_res_noise (int ,struct nl80211_noise_info*) ;
 struct wpa_scan_results* os_zalloc (int) ;
 int send_and_recv_msgs (struct wpa_driver_nl80211_data*,struct nl_msg*,int ,struct nl80211_bss_info_arg*) ;
 int strerror (int) ;
 int wpa_printf (int ,char*,int,...) ;
 int wpa_scan_results_free (struct wpa_scan_results*) ;

__attribute__((used)) static struct wpa_scan_results *
nl80211_get_scan_results(struct wpa_driver_nl80211_data *drv)
{
 struct nl_msg *msg;
 struct wpa_scan_results *res;
 int ret;
 struct nl80211_bss_info_arg arg;

 res = os_zalloc(sizeof(*res));
 if (res == ((void*)0))
  return ((void*)0);
 if (!(msg = nl80211_cmd_msg(drv->first_bss, NLM_F_DUMP,
        NL80211_CMD_GET_SCAN))) {
  wpa_scan_results_free(res);
  return ((void*)0);
 }

 arg.drv = drv;
 arg.res = res;
 ret = send_and_recv_msgs(drv, msg, bss_info_handler, &arg);
 if (ret == 0) {
  struct nl80211_noise_info info;

  wpa_printf(MSG_DEBUG, "nl80211: Received scan results (%lu "
      "BSSes)", (unsigned long) res->num);
  if (nl80211_get_noise_for_scan_results(drv, &info) == 0) {
   size_t i;

   for (i = 0; i < res->num; ++i)
    nl80211_update_scan_res_noise(res->res[i],
             &info);
  }
  return res;
 }
 wpa_printf(MSG_DEBUG, "nl80211: Scan result fetch failed: ret=%d "
     "(%s)", ret, strerror(-ret));
 wpa_scan_results_free(res);
 return ((void*)0);
}
