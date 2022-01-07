
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ ETH_P_80211_ENCAP ;
 scalar_t__ ETH_P_EAPOL ;
 scalar_t__ ETH_P_RSN_PREAUTH ;

__attribute__((used)) static int wpa_priv_allowed_l2_proto(u16 proto)
{
 return proto == ETH_P_EAPOL || proto == ETH_P_RSN_PREAUTH ||
  proto == ETH_P_80211_ENCAP;
}
