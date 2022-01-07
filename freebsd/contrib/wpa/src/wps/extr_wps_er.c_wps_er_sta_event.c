
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_event_er_enrollee {int serial_number; int model_number; int model_name; int manufacturer; int dev_name; int pri_dev_type; int dev_passwd_id; int config_methods; int m1_received; int mac_addr; int uuid; } ;
union wps_event_data {struct wps_event_er_enrollee enrollee; } ;
struct wps_er_sta {int serial_number; int model_number; int model_name; int manufacturer; int dev_name; int pri_dev_type; int dev_passwd_id; int config_methods; int m1_received; int addr; int uuid; } ;
struct wps_context {int cb_ctx; int (* event_cb ) (int ,int,union wps_event_data*) ;} ;
typedef enum wps_event { ____Placeholder_wps_event } wps_event ;
typedef int data ;


 int os_memset (union wps_event_data*,int ,int) ;
 int stub1 (int ,int,union wps_event_data*) ;

__attribute__((used)) static void wps_er_sta_event(struct wps_context *wps, struct wps_er_sta *sta,
        enum wps_event event)
{
 union wps_event_data data;
 struct wps_event_er_enrollee *ev = &data.enrollee;

 if (wps->event_cb == ((void*)0))
  return;

 os_memset(&data, 0, sizeof(data));
 ev->uuid = sta->uuid;
 ev->mac_addr = sta->addr;
 ev->m1_received = sta->m1_received;
 ev->config_methods = sta->config_methods;
 ev->dev_passwd_id = sta->dev_passwd_id;
 ev->pri_dev_type = sta->pri_dev_type;
 ev->dev_name = sta->dev_name;
 ev->manufacturer = sta->manufacturer;
 ev->model_name = sta->model_name;
 ev->model_number = sta->model_number;
 ev->serial_number = sta->serial_number;
 wps->event_cb(wps->cb_ctx, event, &data);
}
