
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_iface {size_t num_bss; struct hostapd_data** bss; } ;
struct hostapd_data {int started; } ;


 int ap_list_timer (struct hostapd_iface*) ;
 int hostapd_acl_expire (struct hostapd_data*) ;

void hostapd_periodic_iface(struct hostapd_iface *iface)
{
 size_t i;

 ap_list_timer(iface);

 for (i = 0; i < iface->num_bss; i++) {
  struct hostapd_data *hapd = iface->bss[i];

  if (!hapd->started)
   continue;


  hostapd_acl_expire(hapd);

 }
}
