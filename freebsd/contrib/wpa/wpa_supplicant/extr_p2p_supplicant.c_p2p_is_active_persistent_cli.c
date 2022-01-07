
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* current_ssid; } ;
struct TYPE_2__ {scalar_t__ mode; } ;


 scalar_t__ WPAS_MODE_INFRA ;
 scalar_t__ p2p_is_active_persistent_group (struct wpa_supplicant*) ;

__attribute__((used)) static unsigned int p2p_is_active_persistent_cli(struct wpa_supplicant *wpa_s)
{
 return p2p_is_active_persistent_group(wpa_s) &&
  wpa_s->current_ssid->mode == WPAS_MODE_INFRA;
}
