
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* current_ssid; int p2p_mgmt; } ;
struct TYPE_2__ {scalar_t__ p2p_persistent_group; scalar_t__ p2p_group; int disabled; } ;



__attribute__((used)) static unsigned int p2p_is_active_persistent_group(struct wpa_supplicant *wpa_s)
{
 return !wpa_s->p2p_mgmt && wpa_s->current_ssid &&
  !wpa_s->current_ssid->disabled &&
  wpa_s->current_ssid->p2p_group &&
  wpa_s->current_ssid->p2p_persistent_group;
}
