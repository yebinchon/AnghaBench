
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct TYPE_2__ {int * p2p; scalar_t__ p2p_disabled; } ;


 int p2p_scan_ie (int *,struct wpabuf*,int *,unsigned int) ;
 unsigned int wpas_get_bands (struct wpa_supplicant*,int *) ;

void wpas_p2p_scan_ie(struct wpa_supplicant *wpa_s, struct wpabuf *ies)
{
 unsigned int bands;

 if (wpa_s->global->p2p_disabled)
  return;
 if (wpa_s->global->p2p == ((void*)0))
  return;

 bands = wpas_get_bands(wpa_s, ((void*)0));
 p2p_scan_ie(wpa_s->global->p2p, ies, ((void*)0), bands);
}
