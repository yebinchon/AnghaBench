
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union wpa_event_data {int dummy; } wpa_event_data ;
struct wpa_supplicant {int pending_bssid; } ;


 int MSG_DEBUG ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpa_supplicant_mark_disassoc (struct wpa_supplicant*) ;
 int wpas_connection_failed (struct wpa_supplicant*,int ) ;

void sme_event_auth_timed_out(struct wpa_supplicant *wpa_s,
         union wpa_event_data *data)
{
 wpa_dbg(wpa_s, MSG_DEBUG, "SME: Authentication timed out");
 wpas_connection_failed(wpa_s, wpa_s->pending_bssid);
 wpa_supplicant_mark_disassoc(wpa_s);
}
