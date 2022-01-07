
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int * global_drv_priv; TYPE_1__* driver; struct wpa_global* global; } ;
struct wpa_global {int ** drv_priv; } ;
struct TYPE_2__ {int name; int * (* global_init ) (struct wpa_global*) ;} ;


 int MSG_ERROR ;
 int * stub1 (struct wpa_global*) ;
 TYPE_1__** wpa_drivers ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static int select_driver(struct wpa_supplicant *wpa_s, int i)
{
 struct wpa_global *global = wpa_s->global;

 if (wpa_drivers[i]->global_init && global->drv_priv[i] == ((void*)0)) {
  global->drv_priv[i] = wpa_drivers[i]->global_init(global);
  if (global->drv_priv[i] == ((void*)0)) {
   wpa_printf(MSG_ERROR, "Failed to initialize driver "
       "'%s'", wpa_drivers[i]->name);
   return -1;
  }
 }

 wpa_s->driver = wpa_drivers[i];
 wpa_s->global_drv_priv = global->drv_priv[i];

 return 0;
}
