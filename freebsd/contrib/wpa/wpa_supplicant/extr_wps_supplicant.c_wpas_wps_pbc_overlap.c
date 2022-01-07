
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int error_indication; int config_error; } ;
union wps_event_data {TYPE_1__ fail; } ;
struct wpa_supplicant {int dummy; } ;
typedef int data ;


 int WPS_CFG_MULTIPLE_PBC_DETECTED ;
 int WPS_EI_NO_ERROR ;
 int os_memset (union wps_event_data*,int ,int) ;
 int wpas_notify_wps_event_fail (struct wpa_supplicant*,TYPE_1__*) ;

void wpas_wps_pbc_overlap(struct wpa_supplicant *wpa_s)
{
 union wps_event_data data;

 os_memset(&data, 0, sizeof(data));
 data.fail.config_error = WPS_CFG_MULTIPLE_PBC_DETECTED;
 data.fail.error_indication = WPS_EI_NO_ERROR;






 wpas_notify_wps_event_fail(wpa_s, &data.fail);
}
