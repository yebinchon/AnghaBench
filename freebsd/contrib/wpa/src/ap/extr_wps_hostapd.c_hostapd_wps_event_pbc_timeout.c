
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pbc_status; } ;
struct hostapd_data {TYPE_1__ wps_stats; } ;


 int WPS_PBC_STATUS_TIMEOUT ;

__attribute__((used)) static void hostapd_wps_event_pbc_timeout(struct hostapd_data *hapd)
{

 hapd->wps_stats.pbc_status = WPS_PBC_STATUS_TIMEOUT;
}
