
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sim_attrs {int * mac; } ;
struct eap_aka_data {scalar_t__ reauth; } ;


 int MSG_INFO ;
 int MSG_WARNING ;
 scalar_t__ eap_aka_process_notification_reauth (struct eap_aka_data*,struct eap_sim_attrs*) ;
 scalar_t__ eap_aka_verify_mac (struct eap_aka_data*,struct wpabuf const*,int *,int *,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int eap_aka_process_notification_auth(struct eap_aka_data *data,
          const struct wpabuf *reqData,
          struct eap_sim_attrs *attr)
{
 if (attr->mac == ((void*)0)) {
  wpa_printf(MSG_INFO, "EAP-AKA: no AT_MAC in after_auth "
      "Notification message");
  return -1;
 }

 if (eap_aka_verify_mac(data, reqData, attr->mac, (u8 *) "", 0)) {
  wpa_printf(MSG_WARNING, "EAP-AKA: Notification message "
      "used invalid AT_MAC");
  return -1;
 }

 if (data->reauth &&
     eap_aka_process_notification_reauth(data, attr)) {
  wpa_printf(MSG_WARNING, "EAP-AKA: Invalid notification "
      "message after reauth");
  return -1;
 }

 return 0;
}
