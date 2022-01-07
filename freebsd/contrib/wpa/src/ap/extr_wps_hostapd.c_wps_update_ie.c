
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {TYPE_1__* wps; } ;
struct TYPE_2__ {int registrar; } ;


 int wps_registrar_update_ie (int ) ;

__attribute__((used)) static int wps_update_ie(struct hostapd_data *hapd, void *ctx)
{
 if (hapd->wps)
  wps_registrar_update_ie(hapd->wps->registrar);
 return 0;
}
