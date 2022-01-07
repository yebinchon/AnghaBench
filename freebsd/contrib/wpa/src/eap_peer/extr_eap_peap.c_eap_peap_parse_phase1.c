
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_peap_data {int force_new_label; int peap_outer_success; int soh; int crypto_binding; int force_peap_version; int peap_version; } ;


 int MSG_DEBUG ;
 int NO_BINDING ;
 int OPTIONAL_BINDING ;
 int REQUIRE_BINDING ;
 int atoi (char const*) ;
 char* os_strstr (char const*,char*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void eap_peap_parse_phase1(struct eap_peap_data *data,
      const char *phase1)
{
 const char *pos;

 pos = os_strstr(phase1, "peapver=");
 if (pos) {
  data->force_peap_version = atoi(pos + 8);
  data->peap_version = data->force_peap_version;
  wpa_printf(MSG_DEBUG, "EAP-PEAP: Forced PEAP version %d",
      data->force_peap_version);
 }

 if (os_strstr(phase1, "peaplabel=1")) {
  data->force_new_label = 1;
  wpa_printf(MSG_DEBUG, "EAP-PEAP: Force new label for key "
      "derivation");
 }

 if (os_strstr(phase1, "peap_outer_success=0")) {
  data->peap_outer_success = 0;
  wpa_printf(MSG_DEBUG, "EAP-PEAP: terminate authentication on "
      "tunneled EAP-Success");
 } else if (os_strstr(phase1, "peap_outer_success=1")) {
  data->peap_outer_success = 1;
  wpa_printf(MSG_DEBUG, "EAP-PEAP: send tunneled EAP-Success "
      "after receiving tunneled EAP-Success");
 } else if (os_strstr(phase1, "peap_outer_success=2")) {
  data->peap_outer_success = 2;
  wpa_printf(MSG_DEBUG, "EAP-PEAP: send PEAP/TLS ACK after "
      "receiving tunneled EAP-Success");
 }

 if (os_strstr(phase1, "crypto_binding=0")) {
  data->crypto_binding = NO_BINDING;
  wpa_printf(MSG_DEBUG, "EAP-PEAP: Do not use cryptobinding");
 } else if (os_strstr(phase1, "crypto_binding=1")) {
  data->crypto_binding = OPTIONAL_BINDING;
  wpa_printf(MSG_DEBUG, "EAP-PEAP: Optional cryptobinding");
 } else if (os_strstr(phase1, "crypto_binding=2")) {
  data->crypto_binding = REQUIRE_BINDING;
  wpa_printf(MSG_DEBUG, "EAP-PEAP: Require cryptobinding");
 }
}
