
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
typedef int xml_namespace_t ;
struct hs20_osu_client {int xml; } ;


 int SPP_NS_URI ;
 int xml_node_add_attr (int ,int *,int *,char*,char const*) ;
 int * xml_node_create (int ,int *,int *,char*) ;
 int * xml_node_create_root (int ,int ,char*,int **,char*) ;

__attribute__((used)) static xml_node_t * build_spp_update_response(struct hs20_osu_client *ctx,
           const char *session_id,
           const char *spp_status,
           const char *error_code)
{
 xml_namespace_t *ns;
 xml_node_t *spp_node, *node;

 spp_node = xml_node_create_root(ctx->xml, SPP_NS_URI, "spp", &ns,
     "sppUpdateResponse");
 if (spp_node == ((void*)0))
  return ((void*)0);

 xml_node_add_attr(ctx->xml, spp_node, ns, "sppVersion", "1.0");
 xml_node_add_attr(ctx->xml, spp_node, ns, "sessionID", session_id);
 xml_node_add_attr(ctx->xml, spp_node, ns, "sppStatus", spp_status);

 if (error_code) {
  node = xml_node_create(ctx->xml, spp_node, ns, "sppError");
  if (node)
   xml_node_add_attr(ctx->xml, node, ((void*)0), "errorCode",
       error_code);
 }

 return spp_node;
}
