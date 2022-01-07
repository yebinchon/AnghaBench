
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; struct wpa_supplicant* next; } ;
struct wpa_global {struct wpa_supplicant* ifaces; scalar_t__ p2p; } ;
struct TYPE_2__ {int bss_expiration_age; } ;


 int WPA_SUPPLICANT_CLEANUP_INTERVAL ;
 int ap_periodic (struct wpa_supplicant*) ;
 int eloop_register_timeout (int ,int ,void (*) (void*,void*),struct wpa_global*,int *) ;
 int p2p_expire_peers (scalar_t__) ;
 int wpa_bss_flush_by_age (struct wpa_supplicant*,int ) ;

__attribute__((used)) static void wpas_periodic(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_global *global = eloop_ctx;
 struct wpa_supplicant *wpa_s;

 eloop_register_timeout(WPA_SUPPLICANT_CLEANUP_INTERVAL, 0,
          wpas_periodic, global, ((void*)0));






 for (wpa_s = global->ifaces; wpa_s; wpa_s = wpa_s->next) {
  wpa_bss_flush_by_age(wpa_s, wpa_s->conf->bss_expiration_age);



 }
}
