
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_event_pwd_auth_fail {int peer_macaddr; } ;
struct TYPE_2__ {int peer_addr; int failure_reason; int status; } ;
struct hostapd_data {TYPE_1__ wps_stats; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int WPS_EI_AUTH_FAILURE ;
 int WPS_STATUS_FAILURE ;
 int hostapd_wps_for_each (struct hostapd_data*,int ,struct wps_event_pwd_auth_fail*) ;
 int os_memcpy (int ,int ,int ) ;
 int wpa_printf (int ,char*) ;
 int wps_pwd_auth_fail ;

__attribute__((used)) static void hostapd_pwd_auth_fail(struct hostapd_data *hapd,
      struct wps_event_pwd_auth_fail *data)
{

 wpa_printf(MSG_DEBUG, "WPS: Authentication failure update");
 hapd->wps_stats.status = WPS_STATUS_FAILURE;
 hapd->wps_stats.failure_reason = WPS_EI_AUTH_FAILURE;
 os_memcpy(hapd->wps_stats.peer_addr, data->peer_macaddr, ETH_ALEN);

 hostapd_wps_for_each(hapd, wps_pwd_auth_fail, data);
}
