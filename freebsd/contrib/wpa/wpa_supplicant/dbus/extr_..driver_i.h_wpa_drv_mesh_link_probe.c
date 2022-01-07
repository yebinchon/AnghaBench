
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* probe_mesh_link ) (int ,int const*,int const*,size_t) ;} ;


 int stub1 (int ,int const*,int const*,size_t) ;

__attribute__((used)) static inline int wpa_drv_mesh_link_probe(struct wpa_supplicant *wpa_s,
       const u8 *addr,
       const u8 *eth, size_t len)
{
 if (wpa_s->driver->probe_mesh_link)
  return wpa_s->driver->probe_mesh_link(wpa_s->drv_priv, addr,
            eth, len);
 return -1;
}
