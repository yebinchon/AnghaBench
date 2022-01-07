
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_for_each_data {int (* func ) (struct hostapd_data*,int ) ;int ctx; struct hostapd_data* calling_hapd; } ;
struct hostapd_iface {size_t num_bss; struct hostapd_data** bss; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {scalar_t__ wps_independent; } ;


 int stub1 (struct hostapd_data*,int ) ;

__attribute__((used)) static int wps_for_each(struct hostapd_iface *iface, void *ctx)
{
 struct wps_for_each_data *data = ctx;
 size_t j;

 if (iface == ((void*)0))
  return 0;
 for (j = 0; j < iface->num_bss; j++) {
  struct hostapd_data *hapd = iface->bss[j];
  int ret;

  if (hapd != data->calling_hapd &&
      (hapd->conf->wps_independent ||
       data->calling_hapd->conf->wps_independent))
   continue;

  ret = data->func(hapd, data->ctx);
  if (ret)
   return ret;
 }

 return 0;
}
