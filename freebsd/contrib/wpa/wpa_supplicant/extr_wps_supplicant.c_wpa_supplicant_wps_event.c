
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enrollee; } ;
union wps_event_data {int set_sel_reg; int ap_settings; int enrollee; int ap; TYPE_1__ pwd_auth_fail; int fail; int m2d; } ;
struct wpa_supplicant {int ap_iface; } ;
typedef enum wps_event { ____Placeholder_wps_event } wps_event ;


 int MSG_INFO ;
 int WPS_EVENT_ACTIVE ;
 int WPS_EVENT_DISABLE ;
 int wpa_msg (struct wpa_supplicant*,int ,int ) ;
 int wpa_supplicant_ap_pwd_auth_fail (struct wpa_supplicant*) ;
 int wpa_supplicant_wps_event_er_ap_add (struct wpa_supplicant*,int *) ;
 int wpa_supplicant_wps_event_er_ap_remove (struct wpa_supplicant*,int *) ;
 int wpa_supplicant_wps_event_er_ap_settings (struct wpa_supplicant*,int *) ;
 int wpa_supplicant_wps_event_er_enrollee_add (struct wpa_supplicant*,int *) ;
 int wpa_supplicant_wps_event_er_enrollee_remove (struct wpa_supplicant*,int *) ;
 int wpa_supplicant_wps_event_er_set_sel_reg (struct wpa_supplicant*,int *) ;
 int wpa_supplicant_wps_event_fail (struct wpa_supplicant*,int *) ;
 int wpa_supplicant_wps_event_m2d (struct wpa_supplicant*,int *) ;
 int wpa_supplicant_wps_event_success (struct wpa_supplicant*) ;

__attribute__((used)) static void wpa_supplicant_wps_event(void *ctx, enum wps_event event,
         union wps_event_data *data)
{
 struct wpa_supplicant *wpa_s = ctx;
 switch (event) {
 case 134:
  wpa_supplicant_wps_event_m2d(wpa_s, &data->m2d);
  break;
 case 135:
  wpa_supplicant_wps_event_fail(wpa_s, &data->fail);
  break;
 case 128:
  wpa_supplicant_wps_event_success(wpa_s);
  break;
 case 129:




  break;
 case 131:
  break;
 case 130:
  break;
 case 133:
  wpa_msg(wpa_s, MSG_INFO, WPS_EVENT_ACTIVE);
  break;
 case 132:
  wpa_msg(wpa_s, MSG_INFO, WPS_EVENT_DISABLE);
  break;
 case 141:
  wpa_supplicant_wps_event_er_ap_add(wpa_s, &data->ap);
  break;
 case 140:
  wpa_supplicant_wps_event_er_ap_remove(wpa_s, &data->ap);
  break;
 case 138:
  wpa_supplicant_wps_event_er_enrollee_add(wpa_s,
        &data->enrollee);
  break;
 case 137:
  wpa_supplicant_wps_event_er_enrollee_remove(wpa_s,
           &data->enrollee);
  break;
 case 139:
  wpa_supplicant_wps_event_er_ap_settings(wpa_s,
       &data->ap_settings);
  break;
 case 136:
  wpa_supplicant_wps_event_er_set_sel_reg(wpa_s,
       &data->set_sel_reg);
  break;
 case 142:
  break;
 }
}
