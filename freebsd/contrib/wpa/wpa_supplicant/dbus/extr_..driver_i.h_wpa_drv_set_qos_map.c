
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_qos_map ) (int ,int const*,int ) ;} ;


 int stub1 (int ,int const*,int ) ;

__attribute__((used)) static inline int wpa_drv_set_qos_map(struct wpa_supplicant *wpa_s,
          const u8 *qos_map_set, u8 qos_map_set_len)
{
 if (!wpa_s->driver->set_qos_map)
  return -1;
 return wpa_s->driver->set_qos_map(wpa_s->drv_priv, qos_map_set,
       qos_map_set_len);
}
