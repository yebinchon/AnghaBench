
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hapd_interfaces {size_t count; struct hostapd_iface** iface; } ;



int hostapd_for_each_interface(struct hapd_interfaces *interfaces,
          int (*cb)(struct hostapd_iface *iface,
      void *ctx), void *ctx)
{
 size_t i;
 int ret;

 for (i = 0; i < interfaces->count; i++) {
  ret = cb(interfaces->iface[i], ctx);
  if (ret)
   return ret;
 }

 return 0;
}
