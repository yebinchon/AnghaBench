
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {scalar_t__ acs_num_completed_scans; TYPE_1__* conf; int * bss; int * scan_cb; } ;
struct TYPE_2__ {scalar_t__ acs_num_scans; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int acs_fail (struct hostapd_iface*) ;
 int acs_request_scan (struct hostapd_iface*) ;
 int acs_study (struct hostapd_iface*) ;
 int hostapd_acs_completed (struct hostapd_iface*,int) ;
 int hostapd_drv_get_survey (int ,int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void acs_scan_complete(struct hostapd_iface *iface)
{
 int err;

 iface->scan_cb = ((void*)0);

 wpa_printf(MSG_DEBUG, "ACS: Using survey based algorithm (acs_num_scans=%d)",
     iface->conf->acs_num_scans);

 err = hostapd_drv_get_survey(iface->bss[0], 0);
 if (err) {
  wpa_printf(MSG_ERROR, "ACS: Failed to get survey data");
  goto fail;
 }

 if (++iface->acs_num_completed_scans < iface->conf->acs_num_scans) {
  err = acs_request_scan(iface);
  if (err) {
   wpa_printf(MSG_ERROR, "ACS: Failed to request scan");
   goto fail;
  }

  return;
 }

 acs_study(iface);
 return;
fail:
 hostapd_acs_completed(iface, 1);
 acs_fail(iface);
}
