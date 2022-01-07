
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; int http; } ;


 int MSG_INFO ;
 int * build_spp_post_dev_data (struct hs20_osu_client*,int *,char const*,char*) ;
 scalar_t__ hs20_spp_validate (struct hs20_osu_client*,int *,char*) ;
 scalar_t__ soap_reinit_client (int ) ;
 int * soap_send_receive (int ,int *) ;
 int wpa_printf (int ,char*) ;
 int xml_node_free (int ,int *) ;

__attribute__((used)) static xml_node_t * hs20_spp_user_input_completed(struct hs20_osu_client *ctx,
          const char *session_id)
{
 xml_node_t *node, *ret_node;

 node = build_spp_post_dev_data(ctx, ((void*)0), session_id,
           "User input completed");
 if (node == ((void*)0))
  return ((void*)0);

 ret_node = soap_send_receive(ctx->http, node);
 if (!ret_node) {
  if (soap_reinit_client(ctx->http) < 0)
   return ((void*)0);
  wpa_printf(MSG_INFO, "Try to finish with re-opened connection");
  node = build_spp_post_dev_data(ctx, ((void*)0), session_id,
            "User input completed");
  if (node == ((void*)0))
   return ((void*)0);
  ret_node = soap_send_receive(ctx->http, node);
  if (ret_node == ((void*)0))
   return ((void*)0);
  wpa_printf(MSG_INFO, "Continue with new connection");
 }

 if (hs20_spp_validate(ctx, ret_node, "sppPostDevDataResponse") < 0) {
  wpa_printf(MSG_INFO, "SPP validation failed");
  xml_node_free(ctx->xml, ret_node);
  return ((void*)0);
 }

 return ret_node;
}
