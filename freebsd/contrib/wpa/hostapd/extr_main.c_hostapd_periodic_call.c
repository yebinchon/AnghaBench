
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_iface {int dummy; } ;


 int hostapd_periodic_iface (struct hostapd_iface*) ;

__attribute__((used)) static int hostapd_periodic_call(struct hostapd_iface *iface, void *ctx)
{
 hostapd_periodic_iface(iface);
 return 0;
}
