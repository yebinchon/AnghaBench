
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
typedef int xml_namespace_t ;
struct hs20_osu_client {int xml; int http; } ;


 int MSG_INFO ;
 int URN_HS20_PPS ;
 int add_mo_container (int ,int *,int *,int ,char const*) ;
 int * build_spp_post_dev_data (struct hs20_osu_client*,int **,char const*,char*) ;
 int debug_dump_node (struct hs20_osu_client*,char*,int *) ;
 char* get_spp_attr_value (int ,int *,char*) ;
 scalar_t__ hs20_spp_validate (struct hs20_osu_client*,int *,char*) ;
 int * soap_send_receive (int ,int *) ;
 scalar_t__ strcasecmp (char*,int ) ;
 int wpa_printf (int ,char*,...) ;
 int xml_node_free (int ,int *) ;
 int xml_node_get_attr_value_free (int ,char*) ;

__attribute__((used)) static xml_node_t * hs20_spp_upload_mo(struct hs20_osu_client *ctx,
           xml_node_t *cmd,
           const char *session_id,
           const char *pps_fname)
{
 xml_namespace_t *ns;
 xml_node_t *node, *ret_node;
 char *urn;

 urn = get_spp_attr_value(ctx->xml, cmd, "moURN");
 if (!urn) {
  wpa_printf(MSG_INFO, "No URN included");
  return ((void*)0);
 }
 wpa_printf(MSG_INFO, "Upload MO request - URN=%s", urn);
 if (strcasecmp(urn, URN_HS20_PPS) != 0) {
  wpa_printf(MSG_INFO, "Unsupported moURN");
  xml_node_get_attr_value_free(ctx->xml, urn);
  return ((void*)0);
 }
 xml_node_get_attr_value_free(ctx->xml, urn);

 if (!pps_fname) {
  wpa_printf(MSG_INFO, "PPS file name no known");
  return ((void*)0);
 }

 node = build_spp_post_dev_data(ctx, &ns, session_id,
           "MO upload");
 if (node == ((void*)0))
  return ((void*)0);
 add_mo_container(ctx->xml, ns, node, URN_HS20_PPS, pps_fname);

 ret_node = soap_send_receive(ctx->http, node);
 if (ret_node == ((void*)0))
  return ((void*)0);

 debug_dump_node(ctx, "Received response to MO upload", ret_node);

 if (hs20_spp_validate(ctx, ret_node, "sppPostDevDataResponse") < 0) {
  wpa_printf(MSG_INFO, "SPP validation failed");
  xml_node_free(ctx->xml, ret_node);
  return ((void*)0);
 }

 return ret_node;
}
