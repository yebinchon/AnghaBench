
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int scan_interval; int scan_req; } ;


 int MANUAL_SCAN_REQ ;
 int wpa_supplicant_req_scan (struct wpa_supplicant*,int ,int ) ;
 scalar_t__ wpa_supplicant_req_sched_scan (struct wpa_supplicant*) ;

__attribute__((used)) static void request_scan(struct wpa_supplicant *wpa_s)
{
 wpa_s->scan_req = MANUAL_SCAN_REQ;

 if (wpa_supplicant_req_sched_scan(wpa_s))
  wpa_supplicant_req_scan(wpa_s, wpa_s->scan_interval, 0);
}
