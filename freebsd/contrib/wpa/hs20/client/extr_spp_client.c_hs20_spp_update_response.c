
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; int http; } ;


 int MSG_INFO ;
 int * build_spp_update_response (struct hs20_osu_client*,char const*,char const*,char const*) ;
 scalar_t__ hs20_spp_validate (struct hs20_osu_client*,int *,char*) ;
 int process_spp_exchange_complete (struct hs20_osu_client*,int *) ;
 scalar_t__ soap_reinit_client (int ) ;
 int * soap_send_receive (int ,int *) ;
 int wpa_printf (int ,char*) ;
 int write_summary (struct hs20_osu_client*,char*,char const*,char const*) ;
 int xml_node_free (int ,int *) ;

__attribute__((used)) static int hs20_spp_update_response(struct hs20_osu_client *ctx,
        const char *session_id,
        const char *spp_status,
        const char *error_code)
{
 xml_node_t *node, *ret_node;
 int ret;

 write_summary(ctx, "Building sppUpdateResponse sppStatus='%s' error_code='%s'",
        spp_status, error_code);
 node = build_spp_update_response(ctx, session_id, spp_status,
      error_code);
 if (node == ((void*)0))
  return -1;
 ret_node = soap_send_receive(ctx->http, node);
 if (!ret_node) {
  if (soap_reinit_client(ctx->http) < 0)
   return -1;
  wpa_printf(MSG_INFO, "Try to finish with re-opened connection");
  node = build_spp_update_response(ctx, session_id, spp_status,
       error_code);
  if (node == ((void*)0))
   return -1;
  ret_node = soap_send_receive(ctx->http, node);
  if (ret_node == ((void*)0))
   return -1;
  wpa_printf(MSG_INFO, "Continue with new connection");
 }

 if (hs20_spp_validate(ctx, ret_node, "sppExchangeComplete") < 0) {
  wpa_printf(MSG_INFO, "SPP validation failed");
  xml_node_free(ctx->xml, ret_node);
  return -1;
 }

 ret = process_spp_exchange_complete(ctx, ret_node);
 xml_node_free(ctx->xml, ret_node);
 return ret;
}
