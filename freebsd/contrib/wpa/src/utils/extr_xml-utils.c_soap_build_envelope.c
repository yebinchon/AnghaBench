
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
typedef int xml_namespace_t ;
struct xml_node_ctx {int dummy; } ;


 int xml_node_add_child (struct xml_node_ctx*,int *,int *) ;
 int * xml_node_create (struct xml_node_ctx*,int *,int *,char*) ;
 int * xml_node_create_root (struct xml_node_ctx*,char*,char*,int **,char*) ;

xml_node_t * soap_build_envelope(struct xml_node_ctx *ctx, xml_node_t *node)
{
 xml_node_t *envelope, *body;
 xml_namespace_t *ns;

 envelope = xml_node_create_root(
  ctx, "http://www.w3.org/2003/05/soap-envelope", "soap12", &ns,
  "Envelope");
 if (envelope == ((void*)0))
  return ((void*)0);
 body = xml_node_create(ctx, envelope, ns, "Body");
 xml_node_add_child(ctx, body, node);
 return envelope;
}
