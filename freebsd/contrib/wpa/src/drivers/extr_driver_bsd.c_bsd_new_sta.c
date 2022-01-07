
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211req_wpaie {int* wpa_ie; int wpa_macaddr; } ;
typedef int ie ;


 int IEEE80211_ADDR_LEN ;
 int IEEE80211_IOC_WPAIE ;
 int MSG_INFO ;
 int drv_event_assoc (void*,int*,int*,int,int ) ;
 scalar_t__ get80211var (void*,int ,struct ieee80211req_wpaie*,int) ;
 int memcpy (int ,int*,int ) ;
 int memset (struct ieee80211req_wpaie*,int ,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void
bsd_new_sta(void *priv, void *ctx, u8 addr[IEEE80211_ADDR_LEN])
{
 struct ieee80211req_wpaie ie;
 int ielen = 0;
 u8 *iebuf = ((void*)0);




 memset(&ie, 0, sizeof(ie));
 memcpy(ie.wpa_macaddr, addr, IEEE80211_ADDR_LEN);
 if (get80211var(priv, IEEE80211_IOC_WPAIE, &ie, sizeof(ie)) < 0) {
  wpa_printf(MSG_INFO,
      "Failed to get WPA/RSN information element");
  goto no_ie;
 }
 iebuf = ie.wpa_ie;
 ielen = ie.wpa_ie[1];
 if (ielen == 0)
  iebuf = ((void*)0);
 else
  ielen += 2;

no_ie:
 drv_event_assoc(ctx, addr, iebuf, ielen, 0);
}
