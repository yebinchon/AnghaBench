
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; } ;


 int MSG_INFO ;
 int * get_node (int ,int *,char*) ;
 int wpa_printf (int ,char*,...) ;
 char* xml_node_get_text (int ,int *) ;
 int xml_node_get_text_free (int ,char*) ;

__attribute__((used)) static void set_pps_cred_home_sp_network_id(struct hs20_osu_client *ctx,
         int id, xml_node_t *node)
{
 xml_node_t *ssid_node, *hessid_node;
 char *ssid, *hessid;

 ssid_node = get_node(ctx->xml, node, "SSID");
 if (ssid_node == ((void*)0)) {
  wpa_printf(MSG_INFO, "Ignore HomeSP/NetworkID without mandatory SSID node");
  return;
 }

 hessid_node = get_node(ctx->xml, node, "HESSID");

 ssid = xml_node_get_text(ctx->xml, ssid_node);
 if (ssid == ((void*)0))
  return;
 hessid = hessid_node ? xml_node_get_text(ctx->xml, hessid_node) : ((void*)0);

 wpa_printf(MSG_INFO, "- HomeSP/NetworkID/<X+>/SSID = %s", ssid);
 if (hessid)
  wpa_printf(MSG_INFO, "- HomeSP/NetworkID/<X+>/HESSID = %s",
      hessid);



 xml_node_get_text_free(ctx->xml, ssid);
 xml_node_get_text_free(ctx->xml, hessid);
}
