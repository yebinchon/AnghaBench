
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct wpa_signal_info {int dummy; } ;
struct TYPE_2__ {int (* signal_poll ) (int ,struct wpa_signal_info*) ;} ;


 int stub1 (int ,struct wpa_signal_info*) ;

__attribute__((used)) static inline int wpa_drv_signal_poll(struct wpa_supplicant *wpa_s,
          struct wpa_signal_info *si)
{
 if (wpa_s->driver->signal_poll)
  return wpa_s->driver->signal_poll(wpa_s->drv_priv, si);
 return -1;
}
