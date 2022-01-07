
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hostapd_data {TYPE_3__* conf; TYPE_2__* iface; } ;
struct TYPE_6__ {int iface; } ;
struct TYPE_5__ {TYPE_1__* interfaces; } ;
struct TYPE_4__ {scalar_t__ (* ctrl_iface_init ) (struct hostapd_data*) ;} ;


 int MSG_ERROR ;
 scalar_t__ stub1 (struct hostapd_data*) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static int start_ctrl_iface_bss(struct hostapd_data *hapd)
{
 if (!hapd->iface->interfaces ||
     !hapd->iface->interfaces->ctrl_iface_init)
  return 0;

 if (hapd->iface->interfaces->ctrl_iface_init(hapd)) {
  wpa_printf(MSG_ERROR,
      "Failed to setup control interface for %s",
      hapd->conf->iface);
  return -1;
 }

 return 0;
}
