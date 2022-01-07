
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int ifname; int xml; } ;






 int MSG_INFO ;
 int atoi (char*) ;
 scalar_t__ set_cred (int ,int,char*,char const*) ;
 int wpa_printf (int ,char*,...) ;
 char* xml_node_get_text (int ,int *) ;
 int xml_node_get_text_free (int ,char*) ;

__attribute__((used)) static void set_pps_cred_eap_method_eap_type(struct hs20_osu_client *ctx,
          int id, xml_node_t *node)
{
 char *str = xml_node_get_text(ctx->xml, node);
 int type;
 const char *eap_method = ((void*)0);

 if (!str)
  return;
 wpa_printf(MSG_INFO,
     "- Credential/UsernamePassword/EAPMethod/EAPType = %s", str);
 type = atoi(str);
 switch (type) {
 case 129:
  eap_method = "TLS";
  break;
 case 128:
  eap_method = "TTLS";
  break;
 case 131:
  eap_method = "PEAP";
  break;
 case 130:
  eap_method = "PWD";
  break;
 }
 xml_node_get_text_free(ctx->xml, str);
 if (!eap_method) {
  wpa_printf(MSG_INFO, "Unknown EAPType value");
  return;
 }

 if (set_cred(ctx->ifname, id, "eap", eap_method) < 0)
  wpa_printf(MSG_INFO, "Failed to set cred eap");
}
