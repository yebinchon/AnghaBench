
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; int ifname; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int * get_node (int ,int *,char*) ;
 scalar_t__ set_cred_quoted (int ,int,char*,char*) ;
 int wpa_printf (int ,char*,...) ;
 char* xml_node_get_text (int ,int *) ;
 int xml_node_get_text_free (int ,char*) ;

__attribute__((used)) static void set_pps_cred_policy_spe(struct hs20_osu_client *ctx, int id,
        xml_node_t *spe)
{
 xml_node_t *ssid;
 char *txt;

 ssid = get_node(ctx->xml, spe, "SSID");
 if (ssid == ((void*)0))
  return;
 txt = xml_node_get_text(ctx->xml, ssid);
 if (txt == ((void*)0))
  return;
 wpa_printf(MSG_DEBUG, "- Policy/SPExclusionList/<X+>/SSID = %s", txt);
 if (set_cred_quoted(ctx->ifname, id, "excluded_ssid", txt) < 0)
  wpa_printf(MSG_INFO, "Failed to set cred excluded_ssid");
 xml_node_get_text_free(ctx->xml, txt);
}
