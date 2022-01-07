
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int ifname; int xml; } ;


 int MSG_INFO ;
 scalar_t__ os_strcmp (char*,char*) ;
 scalar_t__ set_cred_quoted (int ,int,char*,char const*) ;
 int wpa_printf (int ,char*,...) ;
 char* xml_node_get_text (int ,int *) ;
 int xml_node_get_text_free (int ,char*) ;

__attribute__((used)) static void set_pps_cred_eap_method_inner_method(struct hs20_osu_client *ctx,
       int id, xml_node_t *node)
{
 char *str = xml_node_get_text(ctx->xml, node);
 const char *phase2 = ((void*)0);

 if (!str)
  return;
 wpa_printf(MSG_INFO,
     "- Credential/UsernamePassword/EAPMethod/InnerMethod = %s",
     str);
 if (os_strcmp(str, "PAP") == 0)
  phase2 = "auth=PAP";
 else if (os_strcmp(str, "CHAP") == 0)
  phase2 = "auth=CHAP";
 else if (os_strcmp(str, "MS-CHAP") == 0)
  phase2 = "auth=MSCHAP";
 else if (os_strcmp(str, "MS-CHAP-V2") == 0)
  phase2 = "auth=MSCHAPV2";
 xml_node_get_text_free(ctx->xml, str);
 if (!phase2) {
  wpa_printf(MSG_INFO, "Unknown InnerMethod value");
  return;
 }

 if (set_cred_quoted(ctx->ifname, id, "phase2", phase2) < 0)
  wpa_printf(MSG_INFO, "Failed to set cred phase2");
}
