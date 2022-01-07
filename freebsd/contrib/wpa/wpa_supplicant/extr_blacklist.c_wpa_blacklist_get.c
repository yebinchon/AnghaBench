
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {struct wpa_blacklist* blacklist; } ;
struct wpa_blacklist {struct wpa_blacklist* next; int bssid; } ;


 int ETH_ALEN ;
 scalar_t__ os_memcmp (int ,int const*,int ) ;

struct wpa_blacklist * wpa_blacklist_get(struct wpa_supplicant *wpa_s,
      const u8 *bssid)
{
 struct wpa_blacklist *e;

 if (wpa_s == ((void*)0) || bssid == ((void*)0))
  return ((void*)0);

 e = wpa_s->blacklist;
 while (e) {
  if (os_memcmp(e->bssid, bssid, ETH_ALEN) == 0)
   return e;
  e = e->next;
 }

 return ((void*)0);
}
