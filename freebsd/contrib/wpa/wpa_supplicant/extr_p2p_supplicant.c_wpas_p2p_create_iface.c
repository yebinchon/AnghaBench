
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wpa_supplicant {int drv_flags; scalar_t__ wpa_state; TYPE_3__* global; TYPE_1__* conf; } ;
struct TYPE_6__ {TYPE_2__* ifaces; } ;
struct TYPE_5__ {scalar_t__ next; } ;
struct TYPE_4__ {scalar_t__ p2p_no_group_iface; } ;


 scalar_t__ WPA_AUTHENTICATING ;
 int WPA_DRIVER_FLAGS_P2P_CONCURRENT ;
 int WPA_DRIVER_FLAGS_P2P_DEDICATED_INTERFACE ;
 int WPA_DRIVER_FLAGS_P2P_MGMT_AND_NON_P2P ;

__attribute__((used)) static int wpas_p2p_create_iface(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->conf->p2p_no_group_iface)
  return 0;
 if (wpa_s->drv_flags &
     (WPA_DRIVER_FLAGS_P2P_DEDICATED_INTERFACE |
      WPA_DRIVER_FLAGS_P2P_MGMT_AND_NON_P2P))
  return 1;

 if (!(wpa_s->drv_flags & WPA_DRIVER_FLAGS_P2P_CONCURRENT))
  return 0;
 if (wpa_s->global->ifaces->next)
  return 1;
 if (wpa_s->wpa_state >= WPA_AUTHENTICATING)
  return 1;
 return 0;
}
