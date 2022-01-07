
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; int ifname; } ;


 int MSG_INFO ;
 scalar_t__ set_cred (int ,int,char*,char*) ;
 int wpa_printf (int ,char*,...) ;
 char* xml_node_get_text (int ,int *) ;
 int xml_node_get_text_free (int ,char*) ;

__attribute__((used)) static void set_pps_cred_policy_max_bss_load(struct hs20_osu_client *ctx, int id,
          xml_node_t *node)
{
 char *str = xml_node_get_text(ctx->xml, node);
 if (str == ((void*)0))
  return;
 wpa_printf(MSG_INFO, "- Policy/MaximumBSSLoadValue - %s", str);
 if (set_cred(ctx->ifname, id, "max_bss_load", str) < 0)
  wpa_printf(MSG_INFO, "Failed to set cred max_bss_load limit");
 xml_node_get_text_free(ctx->xml, str);
}
