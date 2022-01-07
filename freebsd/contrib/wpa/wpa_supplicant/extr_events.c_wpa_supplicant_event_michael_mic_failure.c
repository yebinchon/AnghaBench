
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ unicast; } ;
union wpa_event_data {TYPE_1__ michael_mic_failure; } ;
typedef int u8 ;
struct os_reltime {scalar_t__ sec; } ;
struct wpa_supplicant {int pending_mic_error_report; int pending_mic_error_pairwise; int countermeasures; scalar_t__ mic_errors_seen; struct os_reltime last_michael_mic_error; int wpa; int bssid; } ;
typedef int rval ;


 int MSG_DEBUG ;
 int MSG_WARNING ;
 int WLAN_REASON_MICHAEL_MIC_FAILURE ;
 int WPA_GET_BE32 (int *) ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int eloop_register_timeout (int,int,int ,struct wpa_supplicant*,int *) ;
 scalar_t__ os_get_random (int *,int) ;
 int os_get_reltime (struct os_reltime*) ;
 int os_random () ;
 int os_reltime_expired (struct os_reltime*,struct os_reltime*,int) ;
 int os_sleep (int ,int) ;
 int wpa_blacklist_add (struct wpa_supplicant*,int ) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,int) ;
 int wpa_drv_set_countermeasures (struct wpa_supplicant*,int) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*) ;
 int wpa_sm_key_request (int ,int,int) ;
 int wpa_supplicant_deauthenticate (struct wpa_supplicant*,int ) ;
 int wpa_supplicant_delayed_mic_error_report ;
 int wpa_supplicant_stop_countermeasures ;

__attribute__((used)) static void
wpa_supplicant_event_michael_mic_failure(struct wpa_supplicant *wpa_s,
      union wpa_event_data *data)
{
 int pairwise;
 struct os_reltime t;

 wpa_msg(wpa_s, MSG_WARNING, "Michael MIC failure detected");
 pairwise = (data && data->michael_mic_failure.unicast);
 os_get_reltime(&t);
 if ((wpa_s->last_michael_mic_error.sec &&
      !os_reltime_expired(&t, &wpa_s->last_michael_mic_error, 60)) ||
     wpa_s->pending_mic_error_report) {
  if (wpa_s->pending_mic_error_report) {





   wpa_sm_key_request(wpa_s->wpa, 1,
        wpa_s->pending_mic_error_pairwise);
  }




  wpa_sm_key_request(wpa_s->wpa, 1, pairwise);


  wpa_s->countermeasures = 1;

  wpa_blacklist_add(wpa_s, wpa_s->bssid);

  wpa_msg(wpa_s, MSG_WARNING, "TKIP countermeasures started");





  os_sleep(0, 10000);

  wpa_drv_set_countermeasures(wpa_s, 1);
  wpa_supplicant_deauthenticate(wpa_s,
           WLAN_REASON_MICHAEL_MIC_FAILURE);
  eloop_cancel_timeout(wpa_supplicant_stop_countermeasures,
         wpa_s, ((void*)0));
  eloop_register_timeout(60, 0,
           wpa_supplicant_stop_countermeasures,
           wpa_s, ((void*)0));


 } else {
  wpa_sm_key_request(wpa_s->wpa, 1, pairwise);

 }
 wpa_s->last_michael_mic_error = t;
 wpa_s->mic_errors_seen++;
}
