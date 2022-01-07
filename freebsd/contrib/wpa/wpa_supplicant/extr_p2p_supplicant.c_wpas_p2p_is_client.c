
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* current_ssid; } ;
struct TYPE_2__ {scalar_t__ mode; scalar_t__ p2p_group; } ;


 scalar_t__ WPAS_MODE_INFRA ;

__attribute__((used)) static int wpas_p2p_is_client(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->current_ssid == ((void*)0)) {





  return 1;
 }
 return wpa_s->current_ssid->p2p_group &&
  wpa_s->current_ssid->mode == WPAS_MODE_INFRA;
}
