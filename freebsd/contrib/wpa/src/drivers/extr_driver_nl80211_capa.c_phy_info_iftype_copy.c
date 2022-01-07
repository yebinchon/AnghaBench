
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct he_capabilities {int he_supported; int ppet; int * mcs; int * mac_cap; int * phy_cap; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
typedef enum ieee80211_op_mode { ____Placeholder_ieee80211_op_mode } ieee80211_op_mode ;






 size_t NL80211_BAND_IFTYPE_ATTR_HE_CAP_MAC ;
 size_t NL80211_BAND_IFTYPE_ATTR_HE_CAP_MCS_SET ;
 size_t NL80211_BAND_IFTYPE_ATTR_HE_CAP_PHY ;
 size_t NL80211_BAND_IFTYPE_ATTR_HE_CAP_PPE ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_MESH_POINT ;
 int NL80211_IFTYPE_STATION ;
 int nla_data (struct nlattr*) ;
 int nla_get_flag (struct nlattr*) ;
 size_t nla_len (struct nlattr*) ;
 int os_memcpy (int *,int ,size_t) ;

__attribute__((used)) static void phy_info_iftype_copy(struct he_capabilities *he_capab,
     enum ieee80211_op_mode opmode,
     struct nlattr **tb, struct nlattr **tb_flags)
{
 enum nl80211_iftype iftype;
 size_t len;

 switch (opmode) {
 case 129:
  iftype = NL80211_IFTYPE_STATION;
  break;
 case 130:
  iftype = NL80211_IFTYPE_ADHOC;
  break;
 case 131:
  iftype = NL80211_IFTYPE_AP;
  break;
 case 128:
  iftype = NL80211_IFTYPE_MESH_POINT;
  break;
 default:
  return;
 }

 if (!nla_get_flag(tb_flags[iftype]))
  return;

 he_capab->he_supported = 1;

 if (tb[NL80211_BAND_IFTYPE_ATTR_HE_CAP_PHY]) {
  len = nla_len(tb[NL80211_BAND_IFTYPE_ATTR_HE_CAP_PHY]);

  if (len > sizeof(he_capab->phy_cap))
   len = sizeof(he_capab->phy_cap);
  os_memcpy(he_capab->phy_cap,
     nla_data(tb[NL80211_BAND_IFTYPE_ATTR_HE_CAP_PHY]),
     len);
 }

 if (tb[NL80211_BAND_IFTYPE_ATTR_HE_CAP_MAC]) {
  len = nla_len(tb[NL80211_BAND_IFTYPE_ATTR_HE_CAP_MAC]);

  if (len > sizeof(he_capab->mac_cap))
   len = sizeof(he_capab->mac_cap);
  os_memcpy(he_capab->mac_cap,
     nla_data(tb[NL80211_BAND_IFTYPE_ATTR_HE_CAP_MAC]),
     len);
 }

 if (tb[NL80211_BAND_IFTYPE_ATTR_HE_CAP_MCS_SET]) {
  len = nla_len(tb[NL80211_BAND_IFTYPE_ATTR_HE_CAP_MCS_SET]);

  if (len > sizeof(he_capab->mcs))
   len = sizeof(he_capab->mcs);
  os_memcpy(he_capab->mcs,
     nla_data(tb[NL80211_BAND_IFTYPE_ATTR_HE_CAP_MCS_SET]),
     len);
 }

 if (tb[NL80211_BAND_IFTYPE_ATTR_HE_CAP_PPE]) {
  len = nla_len(tb[NL80211_BAND_IFTYPE_ATTR_HE_CAP_PPE]);

  if (len > sizeof(he_capab->ppet))
   len = sizeof(he_capab->ppet);
  os_memcpy(&he_capab->ppet,
     nla_data(tb[NL80211_BAND_IFTYPE_ATTR_HE_CAP_PPE]),
     len);
 }
}
