
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_credential {int dummy; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wps_process_cred_network_idx(struct wps_credential *cred,
     const u8 *idx)
{
 if (idx == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: Credential did not include "
      "Network Index");
  return -1;
 }

 wpa_printf(MSG_DEBUG, "WPS: Network Index: %d", *idx);

 return 0;
}
