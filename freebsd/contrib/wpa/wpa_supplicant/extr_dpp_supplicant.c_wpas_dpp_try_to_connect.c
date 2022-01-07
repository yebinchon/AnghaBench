
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int reassociate; scalar_t__ normal_scans; scalar_t__ scan_runs; scalar_t__ disconnected; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 int wpa_supplicant_cancel_sched_scan (struct wpa_supplicant*) ;
 int wpa_supplicant_req_scan (struct wpa_supplicant*,int ,int ) ;

__attribute__((used)) static void wpas_dpp_try_to_connect(struct wpa_supplicant *wpa_s)
{
 wpa_printf(MSG_DEBUG, "DPP: Trying to connect to the new network");
 wpa_s->disconnected = 0;
 wpa_s->reassociate = 1;
 wpa_s->scan_runs = 0;
 wpa_s->normal_scans = 0;
 wpa_supplicant_cancel_sched_scan(wpa_s);
 wpa_supplicant_req_scan(wpa_s, 0, 0);
}
