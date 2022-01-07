
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct wps_credential const* cred; int uuid; } ;
union wps_event_data {TYPE_1__ ap_settings; } ;
struct wps_er_ap {TYPE_3__* er; int uuid; TYPE_4__* ap_settings; } ;
struct wps_credential {int dummy; } ;
typedef int data ;
struct TYPE_10__ {int * cred_attr; } ;
struct TYPE_9__ {TYPE_2__* wps; } ;
struct TYPE_8__ {int cb_ctx; int (* event_cb ) (int ,int ,union wps_event_data*) ;} ;


 int MSG_DEBUG ;
 int WPS_EV_ER_AP_SETTINGS ;
 int os_free (TYPE_4__*) ;
 TYPE_4__* os_malloc (int) ;
 int os_memcpy (TYPE_4__*,struct wps_credential const*,int) ;
 int os_memset (union wps_event_data*,int ,int) ;
 int stub1 (int ,int ,union wps_event_data*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void wps_er_ap_settings_cb(void *ctx, const struct wps_credential *cred)
{
 struct wps_er_ap *ap = ctx;
 union wps_event_data data;

 wpa_printf(MSG_DEBUG, "WPS ER: AP Settings received");
 os_free(ap->ap_settings);
 ap->ap_settings = os_malloc(sizeof(*cred));
 if (ap->ap_settings) {
  os_memcpy(ap->ap_settings, cred, sizeof(*cred));
  ap->ap_settings->cred_attr = ((void*)0);
 }

 os_memset(&data, 0, sizeof(data));
 data.ap_settings.uuid = ap->uuid;
 data.ap_settings.cred = cred;
 ap->er->wps->event_cb(ap->er->wps->cb_ctx, WPS_EV_ER_AP_SETTINGS,
         &data);
}
