
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {scalar_t__ wpa_state; TYPE_1__* conf; } ;
struct TYPE_2__ {int preassoc_mac_addr; } ;


 scalar_t__ WPA_AUTHENTICATING ;
 int wpas_update_random_addr (struct wpa_supplicant*,int ) ;

int wpas_update_random_addr_disassoc(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->wpa_state >= WPA_AUTHENTICATING ||
     !wpa_s->conf->preassoc_mac_addr)
  return 0;

 return wpas_update_random_addr(wpa_s, wpa_s->conf->preassoc_mac_addr);
}
