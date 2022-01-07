
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int IEEE80211_MLME_DEAUTH ;
 int bsd_send_mlme_param (void*,int ,int ,int const*) ;

__attribute__((used)) static int
wpa_driver_bsd_deauthenticate(void *priv, const u8 *addr, u16 reason_code)
{
 return bsd_send_mlme_param(priv, IEEE80211_MLME_DEAUTH, reason_code,
       addr);
}
