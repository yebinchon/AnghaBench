
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IEEE80211_AUTH_AUTO ;
 int IEEE80211_AUTH_OPEN ;
 int IEEE80211_AUTH_SHARED ;
 int IEEE80211_IOC_AUTHMODE ;
 int WPA_AUTH_ALG_OPEN ;
 int WPA_AUTH_ALG_SHARED ;
 int set80211param (void*,int ,int) ;

__attribute__((used)) static int
wpa_driver_bsd_set_auth_alg(void *priv, int auth_alg)
{
 int authmode;

 if ((auth_alg & WPA_AUTH_ALG_OPEN) &&
     (auth_alg & WPA_AUTH_ALG_SHARED))
  authmode = IEEE80211_AUTH_AUTO;
 else if (auth_alg & WPA_AUTH_ALG_SHARED)
  authmode = IEEE80211_AUTH_SHARED;
 else
  authmode = IEEE80211_AUTH_OPEN;

 return set80211param(priv, IEEE80211_IOC_AUTHMODE, authmode);
}
