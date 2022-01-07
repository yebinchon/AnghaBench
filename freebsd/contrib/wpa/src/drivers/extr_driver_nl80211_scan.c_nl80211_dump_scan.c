
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_nl80211_data {int first_bss; } ;
struct nl_msg {int dummy; } ;
struct nl80211_dump_scan_ctx {scalar_t__ idx; struct wpa_driver_nl80211_data* drv; } ;


 int MSG_DEBUG ;
 int NL80211_CMD_GET_SCAN ;
 int NLM_F_DUMP ;
 struct nl_msg* nl80211_cmd_msg (int ,int ,int ) ;
 int nl80211_dump_scan_handler ;
 int send_and_recv_msgs (struct wpa_driver_nl80211_data*,struct nl_msg*,int ,struct nl80211_dump_scan_ctx*) ;
 int wpa_printf (int ,char*) ;

void nl80211_dump_scan(struct wpa_driver_nl80211_data *drv)
{
 struct nl_msg *msg;
 struct nl80211_dump_scan_ctx ctx;

 wpa_printf(MSG_DEBUG, "nl80211: Scan result dump");
 ctx.drv = drv;
 ctx.idx = 0;
 msg = nl80211_cmd_msg(drv->first_bss, NLM_F_DUMP, NL80211_CMD_GET_SCAN);
 if (msg)
  send_and_recv_msgs(drv, msg, nl80211_dump_scan_handler, &ctx);
}
