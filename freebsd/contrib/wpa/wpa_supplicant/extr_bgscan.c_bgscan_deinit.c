
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int * bgscan_priv; TYPE_1__* bgscan; } ;
struct TYPE_2__ {int (* deinit ) (int *) ;int name; } ;


 int MSG_DEBUG ;
 int stub1 (int *) ;
 int wpa_printf (int ,char*,int ) ;

void bgscan_deinit(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->bgscan && wpa_s->bgscan_priv) {
  wpa_printf(MSG_DEBUG, "bgscan: Deinitializing module '%s'",
      wpa_s->bgscan->name);
  wpa_s->bgscan->deinit(wpa_s->bgscan_priv);
  wpa_s->bgscan = ((void*)0);
  wpa_s->bgscan_priv = ((void*)0);
 }
}
