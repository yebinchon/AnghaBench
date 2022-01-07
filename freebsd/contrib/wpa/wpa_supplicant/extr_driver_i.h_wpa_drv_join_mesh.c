
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct wpa_driver_mesh_join_params {int dummy; } ;
struct TYPE_2__ {int (* join_mesh ) (int ,struct wpa_driver_mesh_join_params*) ;} ;


 int stub1 (int ,struct wpa_driver_mesh_join_params*) ;

__attribute__((used)) static inline int wpa_drv_join_mesh(struct wpa_supplicant *wpa_s,
        struct wpa_driver_mesh_join_params *params)
{
 if (wpa_s->driver->join_mesh)
  return wpa_s->driver->join_mesh(wpa_s->drv_priv, params);
 return -1;
}
