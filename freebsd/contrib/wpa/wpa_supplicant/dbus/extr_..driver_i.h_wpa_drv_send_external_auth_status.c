
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct external_auth {int dummy; } ;
struct TYPE_2__ {int (* send_external_auth_status ) (int ,struct external_auth*) ;} ;


 int stub1 (int ,struct external_auth*) ;

__attribute__((used)) static inline int
wpa_drv_send_external_auth_status(struct wpa_supplicant *wpa_s,
      struct external_auth *params)
{
 if (!wpa_s->driver->send_external_auth_status)
  return -1;
 return wpa_s->driver->send_external_auth_status(wpa_s->drv_priv,
       params);
}
