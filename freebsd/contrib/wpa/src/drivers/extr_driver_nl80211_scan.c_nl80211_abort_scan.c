
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_nl80211_data {int dummy; } ;
struct nl_msg {int dummy; } ;
struct i802_bss {struct wpa_driver_nl80211_data* drv; } ;


 int MSG_DEBUG ;
 int NL80211_CMD_ABORT_SCAN ;
 struct nl_msg* nl80211_cmd_msg (struct i802_bss*,int ,int ) ;
 int send_and_recv_msgs (struct wpa_driver_nl80211_data*,struct nl_msg*,int *,int *) ;
 int strerror (int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int nl80211_abort_scan(struct i802_bss *bss)
{
 int ret;
 struct nl_msg *msg;
 struct wpa_driver_nl80211_data *drv = bss->drv;

 wpa_printf(MSG_DEBUG, "nl80211: Abort scan");
 msg = nl80211_cmd_msg(bss, 0, NL80211_CMD_ABORT_SCAN);
 ret = send_and_recv_msgs(drv, msg, ((void*)0), ((void*)0));
 if (ret) {
  wpa_printf(MSG_DEBUG, "nl80211: Abort scan failed: ret=%d (%s)",
      ret, strerror(-ret));
 }
 return ret;
}
