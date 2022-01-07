
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct TYPE_2__ {int * p2p; scalar_t__ p2p_disabled; } ;


 int p2p_sd_response (int *,int,int const*,int ,struct wpabuf const*) ;

void wpas_p2p_sd_response(struct wpa_supplicant *wpa_s, int freq,
     const u8 *dst, u8 dialog_token,
     const struct wpabuf *resp_tlvs)
{
 if (wpa_s->global->p2p_disabled || wpa_s->global->p2p == ((void*)0))
  return;
 p2p_sd_response(wpa_s->global->p2p, freq, dst, dialog_token,
   resp_tlvs);
}
