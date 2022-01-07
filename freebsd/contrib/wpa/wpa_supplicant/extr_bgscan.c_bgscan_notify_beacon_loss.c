
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {scalar_t__ bgscan_priv; TYPE_1__* bgscan; } ;
struct TYPE_2__ {int (* notify_beacon_loss ) (scalar_t__) ;} ;


 int stub1 (scalar_t__) ;

void bgscan_notify_beacon_loss(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->bgscan && wpa_s->bgscan_priv)
  wpa_s->bgscan->notify_beacon_loss(wpa_s->bgscan_priv);
}
