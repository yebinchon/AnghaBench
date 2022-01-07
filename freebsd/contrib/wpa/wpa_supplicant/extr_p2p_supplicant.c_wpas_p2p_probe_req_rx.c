
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int p2p_lo_started; TYPE_1__* global; } ;
struct TYPE_2__ {int * p2p; scalar_t__ p2p_disabled; } ;







 int p2p_probe_req_rx (int *,int const*,int const*,int const*,int const*,size_t,unsigned int,int ) ;
 int wpas_notify_preq (struct wpa_supplicant*,int const*,int const*,int const*,int const*,size_t,int) ;

int wpas_p2p_probe_req_rx(struct wpa_supplicant *wpa_s, const u8 *addr,
     const u8 *dst, const u8 *bssid,
     const u8 *ie, size_t ie_len,
     unsigned int rx_freq, int ssi_signal)
{
 if (wpa_s->global->p2p_disabled)
  return 0;
 if (wpa_s->global->p2p == ((void*)0))
  return 0;

 switch (p2p_probe_req_rx(wpa_s->global->p2p, addr, dst, bssid,
     ie, ie_len, rx_freq, wpa_s->p2p_lo_started)) {
 case 130:
  wpas_notify_preq(wpa_s, addr, dst, bssid, ie, ie_len,
     ssi_signal);

 case 132:
 case 131:
 case 129:
 default:
  return 0;
 case 128:
  return 1;
 }
}
