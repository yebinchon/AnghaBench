
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlattr {int dummy; } ;
struct nl_msg {int dummy; } ;
struct genlmsghdr {int dummy; } ;


 int NL80211_ATTR_MAX ;
 size_t NL80211_ATTR_PROTOCOL_FEATURES ;
 int NL_SKIP ;
 int genlmsg_attrdata (struct genlmsghdr*,int ) ;
 int genlmsg_attrlen (struct genlmsghdr*,int ) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_parse (struct nlattr**,int ,int ,int ,int *) ;
 struct genlmsghdr* nlmsg_data (int ) ;
 int nlmsg_hdr (struct nl_msg*) ;

__attribute__((used)) static int protocol_feature_handler(struct nl_msg *msg, void *arg)
{
 u32 *feat = arg;
 struct nlattr *tb_msg[NL80211_ATTR_MAX + 1];
 struct genlmsghdr *gnlh = nlmsg_data(nlmsg_hdr(msg));

 nla_parse(tb_msg, NL80211_ATTR_MAX, genlmsg_attrdata(gnlh, 0),
    genlmsg_attrlen(gnlh, 0), ((void*)0));

 if (tb_msg[NL80211_ATTR_PROTOCOL_FEATURES])
  *feat = nla_get_u32(tb_msg[NL80211_ATTR_PROTOCOL_FEATURES]);

 return NL_SKIP;
}
