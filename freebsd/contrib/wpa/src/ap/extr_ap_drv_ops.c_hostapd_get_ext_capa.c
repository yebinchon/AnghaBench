
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {int extended_capa_len; int extended_capa_mask; int extended_capa; struct hostapd_data** bss; } ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* get_ext_capab ) (int ,int ,int *,int *,int *) ;} ;


 int WPA_IF_AP_BSS ;
 int stub1 (int ,int ,int *,int *,int *) ;

void hostapd_get_ext_capa(struct hostapd_iface *iface)
{
 struct hostapd_data *hapd = iface->bss[0];

 if (!hapd->driver || !hapd->driver->get_ext_capab)
  return;

 hapd->driver->get_ext_capab(hapd->drv_priv, WPA_IF_AP_BSS,
        &iface->extended_capa,
        &iface->extended_capa_mask,
        &iface->extended_capa_len);
}
