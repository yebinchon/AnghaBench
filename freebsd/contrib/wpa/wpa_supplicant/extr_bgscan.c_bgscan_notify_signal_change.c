
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {scalar_t__ bgscan_priv; TYPE_1__* bgscan; } ;
struct TYPE_2__ {int (* notify_signal_change ) (scalar_t__,int,int,int,int) ;} ;


 int stub1 (scalar_t__,int,int,int,int) ;

void bgscan_notify_signal_change(struct wpa_supplicant *wpa_s, int above,
     int current_signal, int current_noise,
     int current_txrate)
{
 if (wpa_s->bgscan && wpa_s->bgscan_priv)
  wpa_s->bgscan->notify_signal_change(wpa_s->bgscan_priv, above,
          current_signal,
          current_noise,
          current_txrate);
}
