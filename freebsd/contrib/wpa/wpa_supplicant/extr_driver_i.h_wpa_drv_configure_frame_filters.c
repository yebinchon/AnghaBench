
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* configure_data_frame_filters ) (int ,int ) ;} ;


 int stub1 (int ,int ) ;

__attribute__((used)) static inline int wpa_drv_configure_frame_filters(struct wpa_supplicant *wpa_s,
        u32 filters)
{
 if (!wpa_s->driver->configure_data_frame_filters)
  return -1;
 return wpa_s->driver->configure_data_frame_filters(wpa_s->drv_priv,
          filters);
}
