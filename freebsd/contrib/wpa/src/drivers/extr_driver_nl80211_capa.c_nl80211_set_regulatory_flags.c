
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct wpa_driver_nl80211_data {int wiphy_idx; TYPE_1__ capa; } ;
struct phy_info_arg {int dummy; } ;
struct nl_msg {int dummy; } ;


 int ENOMEM ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_GET_REG ;
 int WPA_DRIVER_FLAGS_SELF_MANAGED_REGULATORY ;
 int nl80211_cmd (struct wpa_driver_nl80211_data*,struct nl_msg*,int ,int ) ;
 int nl80211_get_reg ;
 scalar_t__ nla_put_u32 (struct nl_msg*,int ,int ) ;
 struct nl_msg* nlmsg_alloc () ;
 int nlmsg_free (struct nl_msg*) ;
 int send_and_recv_msgs (struct wpa_driver_nl80211_data*,struct nl_msg*,int ,struct phy_info_arg*) ;

__attribute__((used)) static int nl80211_set_regulatory_flags(struct wpa_driver_nl80211_data *drv,
     struct phy_info_arg *results)
{
 struct nl_msg *msg;

 msg = nlmsg_alloc();
 if (!msg)
  return -ENOMEM;

 nl80211_cmd(drv, msg, 0, NL80211_CMD_GET_REG);
 if (drv->capa.flags & WPA_DRIVER_FLAGS_SELF_MANAGED_REGULATORY) {
  if (nla_put_u32(msg, NL80211_ATTR_WIPHY, drv->wiphy_idx)) {
   nlmsg_free(msg);
   return -1;
  }
 }

 return send_and_recv_msgs(drv, msg, nl80211_get_reg, results);
}
