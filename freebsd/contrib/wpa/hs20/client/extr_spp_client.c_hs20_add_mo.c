
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; } ;


 int MSG_INFO ;
 int URN_HS20_PPS ;
 int debug_dump_node (struct hs20_osu_client*,char*,int *) ;
 char* get_spp_attr_value (int ,int *,char*) ;
 int hs20_add_pps_mo (struct hs20_osu_client*,char*,int *,char*,size_t) ;
 scalar_t__ strcasecmp (char*,int ) ;
 int wpa_printf (int ,char*,...) ;
 int xml_node_get_attr_value_free (int ,char*) ;

__attribute__((used)) static int hs20_add_mo(struct hs20_osu_client *ctx, xml_node_t *add_mo,
         char *fname, size_t fname_len)
{
 char *uri, *urn;
 int ret;

 debug_dump_node(ctx, "Received addMO", add_mo);

 urn = get_spp_attr_value(ctx->xml, add_mo, "moURN");
 if (urn == ((void*)0)) {
  wpa_printf(MSG_INFO, "[hs20] No moURN in addMO");
  return -1;
 }
 wpa_printf(MSG_INFO, "addMO - moURN: '%s'", urn);
 if (strcasecmp(urn, URN_HS20_PPS) != 0) {
  wpa_printf(MSG_INFO, "[hs20] Unsupported MO in addMO");
  xml_node_get_attr_value_free(ctx->xml, urn);
  return -1;
 }
 xml_node_get_attr_value_free(ctx->xml, urn);

 uri = get_spp_attr_value(ctx->xml, add_mo, "managementTreeURI");
 if (uri == ((void*)0)) {
  wpa_printf(MSG_INFO, "[hs20] No managementTreeURI in addMO");
  return -1;
 }
 wpa_printf(MSG_INFO, "addMO - managementTreeURI: '%s'", uri);

 ret = hs20_add_pps_mo(ctx, uri, add_mo, fname, fname_len);
 xml_node_get_attr_value_free(ctx->xml, uri);
 return ret;
}
