
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sched_scan_supported; } ;
struct wpa_driver_nl80211_data {TYPE_1__ capa; } ;
struct nl_msg {int dummy; } ;
struct i802_bss {struct wpa_driver_nl80211_data* drv; } ;


 int MSG_DEBUG ;
 int NL80211_CMD_STOP_SCHED_SCAN ;
 int android_pno_stop (struct i802_bss*) ;
 struct nl_msg* nl80211_drv_msg (struct wpa_driver_nl80211_data*,int ,int ) ;
 int send_and_recv_msgs (struct wpa_driver_nl80211_data*,struct nl_msg*,int *,int *) ;
 int strerror (int) ;
 int wpa_printf (int ,char*,...) ;

int wpa_driver_nl80211_stop_sched_scan(void *priv)
{
 struct i802_bss *bss = priv;
 struct wpa_driver_nl80211_data *drv = bss->drv;
 int ret;
 struct nl_msg *msg;






 msg = nl80211_drv_msg(drv, 0, NL80211_CMD_STOP_SCHED_SCAN);
 ret = send_and_recv_msgs(drv, msg, ((void*)0), ((void*)0));
 if (ret) {
  wpa_printf(MSG_DEBUG,
      "nl80211: Sched scan stop failed: ret=%d (%s)",
      ret, strerror(-ret));
 } else {
  wpa_printf(MSG_DEBUG,
      "nl80211: Sched scan stop sent");
 }

 return ret;
}
