
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_iface {size_t num_bss; struct hostapd_data** bss; } ;
struct hostapd_data {TYPE_2__* wps; TYPE_1__* conf; } ;
struct TYPE_4__ {int * uuid; } ;
struct TYPE_3__ {int wps_independent; } ;


 int is_nil_uuid (int *) ;

__attribute__((used)) static int get_uuid_cb(struct hostapd_iface *iface, void *ctx)
{
 const u8 **uuid = ctx;
 size_t j;

 if (iface == ((void*)0))
  return 0;
 for (j = 0; j < iface->num_bss; j++) {
  struct hostapd_data *hapd = iface->bss[j];
  if (hapd->wps && !hapd->conf->wps_independent &&
      !is_nil_uuid(hapd->wps->uuid)) {
   *uuid = hapd->wps->uuid;
   return 1;
  }
 }

 return 0;
}
