
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENT_SCAN_RESULTS ;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 int wpa_supplicant_event (void*,int ,int *) ;

__attribute__((used)) static void wpa_driver_ndis_scan_timeout(void *eloop_ctx, void *timeout_ctx)
{
 wpa_printf(MSG_DEBUG, "Scan timeout - try to get results");
 wpa_supplicant_event(timeout_ctx, EVENT_SCAN_RESULTS, ((void*)0));
}
