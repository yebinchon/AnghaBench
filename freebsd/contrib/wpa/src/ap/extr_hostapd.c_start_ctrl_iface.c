
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hostapd_iface {size_t num_bss; TYPE_2__* interfaces; struct hostapd_data** bss; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_4__ {scalar_t__ (* ctrl_iface_init ) (struct hostapd_data*) ;} ;
struct TYPE_3__ {int iface; } ;


 int MSG_ERROR ;
 scalar_t__ stub1 (struct hostapd_data*) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static int start_ctrl_iface(struct hostapd_iface *iface)
{
 size_t i;

 if (!iface->interfaces || !iface->interfaces->ctrl_iface_init)
  return 0;

 for (i = 0; i < iface->num_bss; i++) {
  struct hostapd_data *hapd = iface->bss[i];
  if (iface->interfaces->ctrl_iface_init(hapd)) {
   wpa_printf(MSG_ERROR,
       "Failed to setup control interface for %s",
       hapd->conf->iface);
   return -1;
  }
 }

 return 0;
}
