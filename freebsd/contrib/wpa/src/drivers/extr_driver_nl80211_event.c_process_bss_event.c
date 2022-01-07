
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nl_msg {int dummy; } ;
struct i802_bss {int drv; int ifname; } ;
struct genlmsghdr {int cmd; } ;


 int MSG_DEBUG ;
 size_t NL80211_ATTR_ACK ;
 size_t NL80211_ATTR_COOKIE ;
 size_t NL80211_ATTR_FRAME ;
 size_t NL80211_ATTR_MAC ;
 int NL80211_ATTR_MAX ;
 size_t NL80211_ATTR_RX_SIGNAL_DBM ;
 size_t NL80211_ATTR_STA_WME ;
 size_t NL80211_ATTR_TIMED_OUT ;
 size_t NL80211_ATTR_WIPHY_FREQ ;





 int NL_SKIP ;
 int genlmsg_attrdata (struct genlmsghdr*,int ) ;
 int genlmsg_attrlen (struct genlmsghdr*,int ) ;
 int mlme_event (struct i802_bss*,int,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,struct nlattr*,int *) ;
 int nl80211_command_to_string (int) ;
 int nl80211_external_auth (int ,struct nlattr**) ;
 int nl80211_spurious_frame (struct i802_bss*,struct nlattr**,int) ;
 int nla_parse (struct nlattr**,int ,int ,int ,int *) ;
 struct genlmsghdr* nlmsg_data (int ) ;
 int nlmsg_hdr (struct nl_msg*) ;
 int wpa_printf (int ,char*,int,...) ;

int process_bss_event(struct nl_msg *msg, void *arg)
{
 struct i802_bss *bss = arg;
 struct genlmsghdr *gnlh = nlmsg_data(nlmsg_hdr(msg));
 struct nlattr *tb[NL80211_ATTR_MAX + 1];

 nla_parse(tb, NL80211_ATTR_MAX, genlmsg_attrdata(gnlh, 0),
    genlmsg_attrlen(gnlh, 0), ((void*)0));

 wpa_printf(MSG_DEBUG, "nl80211: BSS Event %d (%s) received for %s",
     gnlh->cmd, nl80211_command_to_string(gnlh->cmd),
     bss->ifname);

 switch (gnlh->cmd) {
 case 131:
 case 130:
  mlme_event(bss, gnlh->cmd, tb[NL80211_ATTR_FRAME],
      tb[NL80211_ATTR_MAC], tb[NL80211_ATTR_TIMED_OUT],
      tb[NL80211_ATTR_WIPHY_FREQ], tb[NL80211_ATTR_ACK],
      tb[NL80211_ATTR_COOKIE],
      tb[NL80211_ATTR_RX_SIGNAL_DBM],
      tb[NL80211_ATTR_STA_WME], ((void*)0));
  break;
 case 128:
  nl80211_spurious_frame(bss, tb, 0);
  break;
 case 129:
  nl80211_spurious_frame(bss, tb, 1);
  break;
 case 132:
  nl80211_external_auth(bss->drv, tb);
  break;
 default:
  wpa_printf(MSG_DEBUG, "nl80211: Ignored unknown event "
      "(cmd=%d)", gnlh->cmd);
  break;
 }

 return NL_SKIP;
}
