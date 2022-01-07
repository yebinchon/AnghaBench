
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; } ;


 int MSG_INFO ;
 int debug_dump_node (struct hs20_osu_client*,char*,int *) ;
 char* get_spp_attr_value (int ,int *,char*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 int wpa_printf (int ,char*,...) ;
 int write_summary (struct hs20_osu_client*,char*,char*) ;
 int xml_node_get_attr_value_free (int ,char*) ;

__attribute__((used)) static int process_spp_exchange_complete(struct hs20_osu_client *ctx,
      xml_node_t *node)
{
 char *status, *session_id;

 debug_dump_node(ctx, "sppExchangeComplete", node);

 status = get_spp_attr_value(ctx->xml, node, "sppStatus");
 if (status == ((void*)0)) {
  wpa_printf(MSG_INFO, "No sppStatus attribute");
  return -1;
 }
 write_summary(ctx, "Received sppExchangeComplete sppStatus='%s'",
        status);

 session_id = get_spp_attr_value(ctx->xml, node, "sessionID");
 if (session_id == ((void*)0)) {
  wpa_printf(MSG_INFO, "No sessionID attribute");
  xml_node_get_attr_value_free(ctx->xml, status);
  return -1;
 }

 wpa_printf(MSG_INFO, "[hs20] sppStatus: '%s'  sessionID: '%s'",
     status, session_id);
 xml_node_get_attr_value_free(ctx->xml, session_id);

 if (strcasecmp(status, "Exchange complete, release TLS connection") ==
     0) {
  xml_node_get_attr_value_free(ctx->xml, status);
  return 0;
 }

 wpa_printf(MSG_INFO, "Unexpected sppStatus '%s'", status);
 write_summary(ctx, "Unexpected sppStatus '%s'", status);
 xml_node_get_attr_value_free(ctx->xml, status);
 return -1;
}
