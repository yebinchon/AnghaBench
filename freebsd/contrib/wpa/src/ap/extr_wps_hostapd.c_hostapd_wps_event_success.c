
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_event_success {int peer_macaddr; } ;
struct TYPE_2__ {int peer_addr; int status; int pbc_status; } ;
struct hostapd_data {TYPE_1__ wps_stats; } ;


 int ETH_ALEN ;
 int WPS_PBC_STATUS_DISABLE ;
 int WPS_STATUS_SUCCESS ;
 int os_memcpy (int ,int ,int ) ;

__attribute__((used)) static void hostapd_wps_event_success(struct hostapd_data *hapd,
          struct wps_event_success *success)
{

 hapd->wps_stats.pbc_status = WPS_PBC_STATUS_DISABLE;
 hapd->wps_stats.status = WPS_STATUS_SUCCESS;
 os_memcpy(hapd->wps_stats.peer_addr, success->peer_macaddr, ETH_ALEN);
}
