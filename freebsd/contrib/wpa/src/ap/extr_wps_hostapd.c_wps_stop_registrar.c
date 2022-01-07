
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_stop_reg_data {int dev_pw_len; int dev_pw; int uuid_e; struct hostapd_data* current_hapd; } ;
struct hostapd_data {TYPE_1__* wps; } ;
struct TYPE_2__ {int registrar; } ;


 int wps_registrar_complete (int ,int ,int ,int ) ;

__attribute__((used)) static int wps_stop_registrar(struct hostapd_data *hapd, void *ctx)
{
 struct wps_stop_reg_data *data = ctx;
 if (hapd != data->current_hapd && hapd->wps != ((void*)0))
  wps_registrar_complete(hapd->wps->registrar, data->uuid_e,
           data->dev_pw, data->dev_pw_len);
 return 0;
}
