
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wps_er_sta {struct wps_er_sta* cred; int http; struct wps_er_sta* dev_name; struct wps_er_sta* serial_number; struct wps_er_sta* model_number; struct wps_er_sta* model_name; struct wps_er_sta* manufacturer; scalar_t__ wps; TYPE_2__* ap; } ;
struct TYPE_4__ {TYPE_1__* er; } ;
struct TYPE_3__ {int wps; } ;


 int WPS_EV_ER_ENROLLEE_REMOVE ;
 int eloop_cancel_timeout (int ,struct wps_er_sta*,int *) ;
 int http_client_free (int ) ;
 int os_free (struct wps_er_sta*) ;
 int wps_deinit (scalar_t__) ;
 int wps_er_sta_event (int ,struct wps_er_sta*,int ) ;
 int wps_er_sta_timeout ;

__attribute__((used)) static void wps_er_sta_free(struct wps_er_sta *sta)
{
 wps_er_sta_event(sta->ap->er->wps, sta, WPS_EV_ER_ENROLLEE_REMOVE);
 if (sta->wps)
  wps_deinit(sta->wps);
 os_free(sta->manufacturer);
 os_free(sta->model_name);
 os_free(sta->model_number);
 os_free(sta->serial_number);
 os_free(sta->dev_name);
 http_client_free(sta->http);
 eloop_cancel_timeout(wps_er_sta_timeout, sta, ((void*)0));
 os_free(sta->cred);
 os_free(sta);
}
