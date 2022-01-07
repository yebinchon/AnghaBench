
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct wpa_scan_results {int dummy; } ;


 int MSG_DEBUG ;
 int interworking_start_fetch_anqp (struct wpa_supplicant*) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*) ;

__attribute__((used)) static void interworking_scan_res_handler(struct wpa_supplicant *wpa_s,
       struct wpa_scan_results *scan_res)
{
 wpa_msg(wpa_s, MSG_DEBUG,
  "Interworking: Scan results available - start ANQP fetch");
 interworking_start_fetch_anqp(wpa_s);
}
