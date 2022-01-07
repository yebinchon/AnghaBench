
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_config {int dummy; } ;
struct global_parse_data {int dummy; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int eap_peer_method_load (char const*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wpa_config_process_load_dynamic_eap(
 const struct global_parse_data *data, struct wpa_config *config,
 int line, const char *so)
{
 int ret;
 wpa_printf(MSG_DEBUG, "load_dynamic_eap=%s", so);
 ret = eap_peer_method_load(so);
 if (ret == -2) {
  wpa_printf(MSG_DEBUG, "This EAP type was already loaded - not "
      "reloading.");
 } else if (ret) {
  wpa_printf(MSG_ERROR, "Line %d: Failed to load dynamic EAP "
      "method '%s'.", line, so);
  return -1;
 }

 return 0;
}
