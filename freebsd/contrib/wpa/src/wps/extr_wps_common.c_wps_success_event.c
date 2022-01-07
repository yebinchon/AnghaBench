
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int peer_macaddr; } ;
union wps_event_data {TYPE_1__ success; } ;
typedef int u8 ;
struct wps_context {int cb_ctx; int (* event_cb ) (int ,int ,union wps_event_data*) ;} ;
typedef int data ;


 int ETH_ALEN ;
 int WPS_EV_SUCCESS ;
 int os_memcpy (int ,int const*,int ) ;
 int os_memset (union wps_event_data*,int ,int) ;
 int stub1 (int ,int ,union wps_event_data*) ;

void wps_success_event(struct wps_context *wps, const u8 *mac_addr)
{
 union wps_event_data data;

 if (wps->event_cb == ((void*)0))
  return;

 os_memset(&data, 0, sizeof(data));
 os_memcpy(data.success.peer_macaddr, mac_addr, ETH_ALEN);
 wps->event_cb(wps->cb_ctx, WPS_EV_SUCCESS, &data);
}
