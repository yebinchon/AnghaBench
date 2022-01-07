
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hostapd_iface {TYPE_2__** bss; } ;
struct TYPE_4__ {TYPE_1__* conf; } ;
struct TYPE_3__ {int iface; } ;


 int MSG_ERROR ;
 int setup_interface (struct hostapd_iface*) ;
 int wpa_printf (int ,char*,int ) ;

int hostapd_setup_interface(struct hostapd_iface *iface)
{
 int ret;

 ret = setup_interface(iface);
 if (ret) {
  wpa_printf(MSG_ERROR, "%s: Unable to setup interface.",
      iface->bss[0]->conf->iface);
  return -1;
 }

 return 0;
}
