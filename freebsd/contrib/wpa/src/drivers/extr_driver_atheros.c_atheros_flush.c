
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int IEEE80211_ADDR_LEN ;
 int IEEE80211_REASON_AUTH_LEAVE ;
 int atheros_sta_deauth (void*,int *,int *,int ) ;
 int os_memset (int *,int,int) ;

__attribute__((used)) static int
atheros_flush(void *priv)
{
 u8 allsta[IEEE80211_ADDR_LEN];
 os_memset(allsta, 0xff, IEEE80211_ADDR_LEN);
 return atheros_sta_deauth(priv, ((void*)0), allsta,
      IEEE80211_REASON_AUTH_LEAVE);
}
