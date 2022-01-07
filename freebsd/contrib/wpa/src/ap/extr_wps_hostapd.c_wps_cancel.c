
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_cancel_ctx {int count; } ;
struct hostapd_data {TYPE_1__* wps; } ;
struct TYPE_2__ {int registrar; } ;


 int ap_for_each_sta (struct hostapd_data*,int ,int *) ;
 int ap_sta_wps_cancel ;
 int wps_registrar_wps_cancel (int ) ;

__attribute__((used)) static int wps_cancel(struct hostapd_data *hapd, void *ctx)
{
 struct wps_cancel_ctx *data = ctx;

 if (hapd->wps) {
  data->count++;
  wps_registrar_wps_cancel(hapd->wps->registrar);
  ap_for_each_sta(hapd, ap_sta_wps_cancel, ((void*)0));
 }

 return 0;
}
