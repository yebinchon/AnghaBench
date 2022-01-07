
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* global; } ;
struct TYPE_2__ {int p2p; } ;


 int p2p_service_flush_asp (int ) ;

void wpas_p2p_service_flush_asp(struct wpa_supplicant *wpa_s)
{
 p2p_service_flush_asp(wpa_s->global->p2p);
}
