
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_button_pushed_ctx {int p2p_dev_addr; int count; } ;
struct hostapd_data {TYPE_1__* wps; } ;
struct TYPE_2__ {int registrar; } ;


 int wps_registrar_button_pushed (int ,int ) ;

__attribute__((used)) static int wps_button_pushed(struct hostapd_data *hapd, void *ctx)
{
 struct wps_button_pushed_ctx *data = ctx;

 if (hapd->wps) {
  data->count++;
  return wps_registrar_button_pushed(hapd->wps->registrar,
         data->p2p_dev_addr);
 }

 return 0;
}
