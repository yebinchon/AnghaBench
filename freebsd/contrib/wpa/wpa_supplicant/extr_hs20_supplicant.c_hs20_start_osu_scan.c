
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int fetch_osu_waiting_scan; int scan_res_handler; int scan_req; int num_osu_scans; } ;


 int MANUAL_SCAN_REQ ;
 int hs20_osu_scan_res_handler ;
 int wpa_supplicant_req_scan (struct wpa_supplicant*,int ,int ) ;

void hs20_start_osu_scan(struct wpa_supplicant *wpa_s)
{
 wpa_s->fetch_osu_waiting_scan = 1;
 wpa_s->num_osu_scans++;
 wpa_s->scan_req = MANUAL_SCAN_REQ;
 wpa_s->scan_res_handler = hs20_osu_scan_res_handler;
 wpa_supplicant_req_scan(wpa_s, 0, 0);
}
