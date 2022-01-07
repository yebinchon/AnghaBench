
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
typedef int xml_namespace_t ;
struct hs20_osu_client {int xml; int http; } ;


 int MSG_INFO ;
 int * build_spp_post_dev_data (struct hs20_osu_client*,int **,char const*,char*) ;
 int debug_dump_node (struct hs20_osu_client*,char*,int *) ;
 scalar_t__ hs20_spp_validate (struct hs20_osu_client*,int *,char*) ;
 int osu_get_certificate (struct hs20_osu_client*,int *) ;
 int * soap_send_receive (int ,int *) ;
 int wpa_printf (int ,char*) ;
 int xml_node_free (int ,int *) ;

__attribute__((used)) static xml_node_t * hs20_spp_get_certificate(struct hs20_osu_client *ctx,
          xml_node_t *cmd,
          const char *session_id,
          const char *pps_fname)
{
 xml_namespace_t *ns;
 xml_node_t *node, *ret_node;
 int res;

 wpa_printf(MSG_INFO, "Client certificate enrollment");

 res = osu_get_certificate(ctx, cmd);
 if (res < 0)
  wpa_printf(MSG_INFO, "EST simpleEnroll failed");

 node = build_spp_post_dev_data(ctx, &ns, session_id,
           res == 0 ?
           "Certificate enrollment completed" :
           "Certificate enrollment failed");
 if (node == ((void*)0))
  return ((void*)0);

 ret_node = soap_send_receive(ctx->http, node);
 if (ret_node == ((void*)0))
  return ((void*)0);

 debug_dump_node(ctx, "Received response to certificate enrollment "
   "completed", ret_node);

 if (hs20_spp_validate(ctx, ret_node, "sppPostDevDataResponse") < 0) {
  wpa_printf(MSG_INFO, "SPP validation failed");
  xml_node_free(ctx->xml, ret_node);
  return ((void*)0);
 }

 return ret_node;
}
