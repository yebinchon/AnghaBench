
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {scalar_t__ wpa_state; struct wpa_supplicant* next; TYPE_1__* global; } ;
struct TYPE_2__ {struct wpa_supplicant* ifaces; } ;


 scalar_t__ WPA_ASSOCIATED ;

__attribute__((used)) static int wpas_is_concurrent_session_active(void *ctx)
{
 struct wpa_supplicant *wpa_s = ctx;
 struct wpa_supplicant *ifs;

 for (ifs = wpa_s->global->ifaces; ifs; ifs = ifs->next) {
  if (ifs == wpa_s)
   continue;
  if (ifs->wpa_state > WPA_ASSOCIATED)
   return 1;
 }
 return 0;
}
