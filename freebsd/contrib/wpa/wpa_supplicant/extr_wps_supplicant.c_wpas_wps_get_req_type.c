
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int eap; } ;
typedef enum wps_request_type { ____Placeholder_wps_request_type } wps_request_type ;


 int WPS_REQ_ENROLLEE ;
 int WPS_REQ_REGISTRAR ;
 scalar_t__ eap_is_wps_pbc_enrollee (int *) ;
 scalar_t__ eap_is_wps_pin_enrollee (int *) ;

enum wps_request_type wpas_wps_get_req_type(struct wpa_ssid *ssid)
{
 if (eap_is_wps_pbc_enrollee(&ssid->eap) ||
     eap_is_wps_pin_enrollee(&ssid->eap))
  return WPS_REQ_ENROLLEE;
 else
  return WPS_REQ_REGISTRAR;
}
