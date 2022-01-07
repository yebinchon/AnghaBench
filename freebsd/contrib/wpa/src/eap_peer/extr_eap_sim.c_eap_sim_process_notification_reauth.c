
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sim_data {size_t counter; int k_encr; } ;
struct eap_sim_attrs {scalar_t__ counter; int * iv; int encr_data_len; int * encr_data; } ;


 int MSG_WARNING ;
 int * eap_sim_parse_encr (int ,int *,int ,int *,struct eap_sim_attrs*,int ) ;
 int os_free (int *) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int eap_sim_process_notification_reauth(struct eap_sim_data *data,
            struct eap_sim_attrs *attr)
{
 struct eap_sim_attrs eattr;
 u8 *decrypted;

 if (attr->encr_data == ((void*)0) || attr->iv == ((void*)0)) {
  wpa_printf(MSG_WARNING, "EAP-SIM: Notification message after "
      "reauth did not include encrypted data");
  return -1;
 }

 decrypted = eap_sim_parse_encr(data->k_encr, attr->encr_data,
           attr->encr_data_len, attr->iv, &eattr,
           0);
 if (decrypted == ((void*)0)) {
  wpa_printf(MSG_WARNING, "EAP-SIM: Failed to parse encrypted "
      "data from notification message");
  return -1;
 }

 if (eattr.counter < 0 || (size_t) eattr.counter != data->counter) {
  wpa_printf(MSG_WARNING, "EAP-SIM: Counter in notification "
      "message does not match with counter in reauth "
      "message");
  os_free(decrypted);
  return -1;
 }

 os_free(decrypted);
 return 0;
}
