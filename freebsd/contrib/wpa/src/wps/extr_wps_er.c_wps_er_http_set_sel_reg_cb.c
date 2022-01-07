
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ uuid; int state; } ;
union wps_event_data {TYPE_1__ set_sel_reg; } ;
struct wps_er_ap {TYPE_3__* er; int * http; scalar_t__ uuid; } ;
struct http_client {int dummy; } ;
typedef enum http_client_event { ____Placeholder_http_client_event } http_client_event ;
typedef int data ;
struct TYPE_6__ {TYPE_2__* wps; } ;
struct TYPE_5__ {int cb_ctx; int (* event_cb ) (int ,int ,union wps_event_data*) ;} ;






 int MSG_DEBUG ;
 int WPS_ER_SET_SEL_REG_DONE ;
 int WPS_ER_SET_SEL_REG_FAILED ;
 int WPS_EV_ER_SET_SELECTED_REGISTRAR ;
 int http_client_free (int *) ;
 int os_memset (union wps_event_data*,int ,int) ;
 int stub1 (int ,int ,union wps_event_data*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void wps_er_http_set_sel_reg_cb(void *ctx, struct http_client *c,
           enum http_client_event event)
{
 struct wps_er_ap *ap = ctx;
 union wps_event_data data;

 os_memset(&data, 0, sizeof(data));

 switch (event) {
 case 129:
  wpa_printf(MSG_DEBUG, "WPS ER: SetSelectedRegistrar OK");
  data.set_sel_reg.state = WPS_ER_SET_SEL_REG_DONE;
  data.set_sel_reg.uuid = ap->uuid;
  break;
 case 131:
 case 130:
 case 128:
  wpa_printf(MSG_DEBUG, "WPS ER: SetSelectedRegistrar failed");
  data.set_sel_reg.state = WPS_ER_SET_SEL_REG_FAILED;
  data.set_sel_reg.uuid = ap->uuid;
  break;
 }
 http_client_free(ap->http);
 ap->http = ((void*)0);

 if (data.set_sel_reg.uuid)
  ap->er->wps->event_cb(ap->er->wps->cb_ctx,
          WPS_EV_ER_SET_SELECTED_REGISTRAR, &data);
}
