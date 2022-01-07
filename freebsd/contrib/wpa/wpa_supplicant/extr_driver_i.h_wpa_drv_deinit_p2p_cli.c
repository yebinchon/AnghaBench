
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* deinit_p2p_cli ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static inline int wpa_drv_deinit_p2p_cli(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->driver->deinit_p2p_cli)
  return wpa_s->driver->deinit_p2p_cli(wpa_s->drv_priv);
 return 0;
}
