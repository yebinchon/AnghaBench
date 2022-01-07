
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wpa_driver_nl80211_data {int dummy; } ;
struct nl_msg {int dummy; } ;


 int NL80211_CMD_GET_PROTOCOL_FEATURES ;
 int nl80211_cmd (struct wpa_driver_nl80211_data*,struct nl_msg*,int ,int ) ;
 struct nl_msg* nlmsg_alloc () ;
 int nlmsg_free (struct nl_msg*) ;
 int protocol_feature_handler ;
 scalar_t__ send_and_recv_msgs (struct wpa_driver_nl80211_data*,struct nl_msg*,int ,int *) ;

__attribute__((used)) static u32 get_nl80211_protocol_features(struct wpa_driver_nl80211_data *drv)
{
 u32 feat = 0;
 struct nl_msg *msg;

 msg = nlmsg_alloc();
 if (!msg)
  return 0;

 if (!nl80211_cmd(drv, msg, 0, NL80211_CMD_GET_PROTOCOL_FEATURES)) {
  nlmsg_free(msg);
  return 0;
 }

 if (send_and_recv_msgs(drv, msg, protocol_feature_handler, &feat) == 0)
  return feat;

 return 0;
}
