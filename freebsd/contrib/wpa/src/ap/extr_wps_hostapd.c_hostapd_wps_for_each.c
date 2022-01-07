
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_for_each_data {int (* func ) (struct hostapd_data*,void*) ;struct hostapd_data* calling_hapd; void* ctx; } ;
struct hostapd_iface {TYPE_1__* interfaces; } ;
struct hostapd_data {struct hostapd_iface* iface; } ;
struct TYPE_2__ {int (* for_each_interface ) (TYPE_1__*,int (*) (struct hostapd_iface*,struct wps_for_each_data*),struct wps_for_each_data*) ;} ;


 int stub1 (TYPE_1__*,int (*) (struct hostapd_iface*,struct wps_for_each_data*),struct wps_for_each_data*) ;
 int wps_for_each (struct hostapd_iface*,struct wps_for_each_data*) ;

__attribute__((used)) static int hostapd_wps_for_each(struct hostapd_data *hapd,
    int (*func)(struct hostapd_data *h, void *ctx),
    void *ctx)
{
 struct hostapd_iface *iface = hapd->iface;
 struct wps_for_each_data data;
 data.func = func;
 data.ctx = ctx;
 data.calling_hapd = hapd;
 if (iface->interfaces == ((void*)0) ||
     iface->interfaces->for_each_interface == ((void*)0))
  return wps_for_each(iface, &data);
 return iface->interfaces->for_each_interface(iface->interfaces,
           wps_for_each, &data);
}
