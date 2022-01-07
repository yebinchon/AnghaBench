
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct TYPE_2__ {int * p2p; scalar_t__ p2p_disabled; } ;


 int p2p_disassoc_notif (int *,int const*,int ,int const*,size_t) ;

void wpas_p2p_disassoc_notif(struct wpa_supplicant *wpa_s, const u8 *bssid,
        u16 reason_code, const u8 *ie, size_t ie_len,
        int locally_generated)
{
 if (wpa_s->global->p2p_disabled || wpa_s->global->p2p == ((void*)0))
  return;

 if (!locally_generated)
  p2p_disassoc_notif(wpa_s->global->p2p, bssid, reason_code, ie,
       ie_len);
}
