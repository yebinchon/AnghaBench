
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union wps_event_data {int pwd_auth_fail; int success; int fail; } ;
struct hostapd_data {int wps_event_cb_ctx; int (* wps_event_cb ) (int ,int,union wps_event_data*) ;int msg_ctx; } ;
typedef enum wps_event { ____Placeholder_wps_event } wps_event ;


 int MSG_INFO ;
 int WPS_EVENT_ACTIVE ;
 int WPS_EVENT_DISABLE ;
 int WPS_EVENT_M2D ;
 int WPS_EVENT_OVERLAP ;
 int WPS_EVENT_SUCCESS ;
 int WPS_EVENT_TIMEOUT ;
 int hostapd_pwd_auth_fail (struct hostapd_data*,int *) ;
 int hostapd_wps_ap_pin_success (struct hostapd_data*) ;
 int hostapd_wps_event_fail (struct hostapd_data*,int *) ;
 int hostapd_wps_event_pbc_active (struct hostapd_data*) ;
 int hostapd_wps_event_pbc_disable (struct hostapd_data*) ;
 int hostapd_wps_event_pbc_overlap (struct hostapd_data*) ;
 int hostapd_wps_event_pbc_timeout (struct hostapd_data*) ;
 int hostapd_wps_event_success (struct hostapd_data*,int *) ;
 int stub1 (int ,int,union wps_event_data*) ;
 int wpa_msg (int ,int ,int ) ;

__attribute__((used)) static void hostapd_wps_event_cb(void *ctx, enum wps_event event,
     union wps_event_data *data)
{
 struct hostapd_data *hapd = ctx;

 switch (event) {
 case 134:
  wpa_msg(hapd->msg_ctx, MSG_INFO, WPS_EVENT_M2D);
  break;
 case 135:
  hostapd_wps_event_fail(hapd, &data->fail);
  break;
 case 128:
  hostapd_wps_event_success(hapd, &data->success);
  wpa_msg(hapd->msg_ctx, MSG_INFO, WPS_EVENT_SUCCESS);
  break;
 case 129:
  hostapd_pwd_auth_fail(hapd, &data->pwd_auth_fail);
  break;
 case 131:
  hostapd_wps_event_pbc_overlap(hapd);
  wpa_msg(hapd->msg_ctx, MSG_INFO, WPS_EVENT_OVERLAP);
  break;
 case 130:
  hostapd_wps_event_pbc_timeout(hapd);
  wpa_msg(hapd->msg_ctx, MSG_INFO, WPS_EVENT_TIMEOUT);
  break;
 case 133:
  hostapd_wps_event_pbc_active(hapd);
  wpa_msg(hapd->msg_ctx, MSG_INFO, WPS_EVENT_ACTIVE);
  break;
 case 132:
  hostapd_wps_event_pbc_disable(hapd);
  wpa_msg(hapd->msg_ctx, MSG_INFO, WPS_EVENT_DISABLE);
  break;
 case 141:
  break;
 case 140:
  break;
 case 138:
  break;
 case 137:
  break;
 case 139:
  break;
 case 136:
  break;
 case 142:
  hostapd_wps_ap_pin_success(hapd);
  break;
 }
 if (hapd->wps_event_cb)
  hapd->wps_event_cb(hapd->wps_event_cb_ctx, event, data);
}
