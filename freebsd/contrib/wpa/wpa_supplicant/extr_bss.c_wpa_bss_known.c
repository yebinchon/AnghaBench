
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_ssid {scalar_t__ ssid_len; int * ssid; struct wpa_ssid* next; } ;
struct wpa_bss {scalar_t__ ssid_len; int ssid; } ;
struct TYPE_2__ {struct wpa_ssid* ssid; } ;


 scalar_t__ os_memcmp (int *,int ,scalar_t__) ;

__attribute__((used)) static int wpa_bss_known(struct wpa_supplicant *wpa_s, struct wpa_bss *bss)
{
 struct wpa_ssid *ssid;

 for (ssid = wpa_s->conf->ssid; ssid; ssid = ssid->next) {
  if (ssid->ssid == ((void*)0) || ssid->ssid_len == 0)
   continue;
  if (ssid->ssid_len == bss->ssid_len &&
      os_memcmp(ssid->ssid, bss->ssid, ssid->ssid_len) == 0)
   return 1;
 }

 return 0;
}
