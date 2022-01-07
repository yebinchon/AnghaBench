
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct hostapd_hw_modes {int * he_capab; } ;


 unsigned int IEEE80211_MODE_NUM ;
 size_t NL80211_BAND_IFTYPE_ATTR_IFTYPES ;
 int NL80211_BAND_IFTYPE_ATTR_MAX ;
 int NL80211_IFTYPE_MAX ;
 int NL_OK ;
 int NL_STOP ;
 int nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int nla_parse (struct nlattr**,int ,int ,int ,int *) ;
 scalar_t__ nla_parse_nested (struct nlattr**,int ,struct nlattr*,int *) ;
 int phy_info_iftype_copy (int *,unsigned int,struct nlattr**,struct nlattr**) ;

__attribute__((used)) static int phy_info_iftype(struct hostapd_hw_modes *mode,
      struct nlattr *nl_iftype)
{
 struct nlattr *tb[NL80211_BAND_IFTYPE_ATTR_MAX + 1];
 struct nlattr *tb_flags[NL80211_IFTYPE_MAX + 1];
 unsigned int i;

 nla_parse(tb, NL80211_BAND_IFTYPE_ATTR_MAX,
    nla_data(nl_iftype), nla_len(nl_iftype), ((void*)0));

 if (!tb[NL80211_BAND_IFTYPE_ATTR_IFTYPES])
  return NL_STOP;

 if (nla_parse_nested(tb_flags, NL80211_IFTYPE_MAX,
        tb[NL80211_BAND_IFTYPE_ATTR_IFTYPES], ((void*)0)))
  return NL_STOP;

 for (i = 0; i < IEEE80211_MODE_NUM; i++)
  phy_info_iftype_copy(&mode->he_capab[i], i, tb, tb_flags);

 return NL_OK;
}
