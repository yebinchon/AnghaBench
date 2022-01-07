
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_event_er_ap {int mac_addr; int wps_state; int pri_dev_type; int upc; int serial_number; int model_url; int model_number; int model_name; int model_description; int manufacturer_url; int manufacturer; int friendly_name; int uuid; } ;
union wps_event_data {struct wps_event_er_ap ap; } ;
struct wps_er_ap {int mac_addr; int wps_state; int pri_dev_type; int upc; int serial_number; int model_url; int model_number; int model_name; int model_description; int manufacturer_url; int manufacturer; int friendly_name; int uuid; } ;
struct wps_context {int cb_ctx; int (* event_cb ) (int ,int,union wps_event_data*) ;} ;
typedef enum wps_event { ____Placeholder_wps_event } wps_event ;
typedef int data ;


 int os_memset (union wps_event_data*,int ,int) ;
 int stub1 (int ,int,union wps_event_data*) ;

__attribute__((used)) static void wps_er_ap_event(struct wps_context *wps, struct wps_er_ap *ap,
       enum wps_event event)
{
 union wps_event_data data;
 struct wps_event_er_ap *evap = &data.ap;

 if (wps->event_cb == ((void*)0))
  return;

 os_memset(&data, 0, sizeof(data));
 evap->uuid = ap->uuid;
 evap->friendly_name = ap->friendly_name;
 evap->manufacturer = ap->manufacturer;
 evap->manufacturer_url = ap->manufacturer_url;
 evap->model_description = ap->model_description;
 evap->model_name = ap->model_name;
 evap->model_number = ap->model_number;
 evap->model_url = ap->model_url;
 evap->serial_number = ap->serial_number;
 evap->upc = ap->upc;
 evap->pri_dev_type = ap->pri_dev_type;
 evap->wps_state = ap->wps_state;
 evap->mac_addr = ap->mac_addr;
 wps->event_cb(wps->cb_ctx, event, &data);
}
