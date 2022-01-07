
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_iface {int sta_seen; } ;


 int dl_list_init (int *) ;
 struct hostapd_iface* os_zalloc (int) ;

struct hostapd_iface * hostapd_alloc_iface(void)
{
 struct hostapd_iface *hapd_iface;

 hapd_iface = os_zalloc(sizeof(*hapd_iface));
 if (!hapd_iface)
  return ((void*)0);

 dl_list_init(&hapd_iface->sta_seen);

 return hapd_iface;
}
