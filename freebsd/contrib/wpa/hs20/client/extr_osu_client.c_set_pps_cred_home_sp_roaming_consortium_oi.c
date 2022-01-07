
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; int ifname; } ;


 int MSG_INFO ;
 scalar_t__ set_cred_quoted (int ,int,char*,char*) ;
 int wpa_printf (int ,char*,...) ;
 char* xml_node_get_text (int ,int *) ;
 int xml_node_get_text_free (int ,char*) ;

__attribute__((used)) static void set_pps_cred_home_sp_roaming_consortium_oi(
 struct hs20_osu_client *ctx, int id, xml_node_t *node)
{
 char *str = xml_node_get_text(ctx->xml, node);
 if (str == ((void*)0))
  return;
 wpa_printf(MSG_INFO, "- HomeSP/RoamingConsortiumOI = %s", str);
 if (set_cred_quoted(ctx->ifname, id, "roaming_consortiums",
       str) < 0)
  wpa_printf(MSG_INFO, "Failed to set cred roaming_consortiums");
 xml_node_get_text_free(ctx->xml, str);
}
