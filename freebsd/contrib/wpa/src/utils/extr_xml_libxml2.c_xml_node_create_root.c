
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
typedef int xml_namespace_t ;
typedef int * xmlNsPtr ;
typedef int * xmlNodePtr ;
typedef int xmlChar ;
struct xml_node_ctx {int dummy; } ;


 int * xmlNewNode (int *,int const*) ;
 int * xmlNewNs (int *,int const*,int const*) ;
 int xmlSetNs (int *,int *) ;

xml_node_t * xml_node_create_root(struct xml_node_ctx *ctx, const char *ns_uri,
      const char *ns_prefix,
      xml_namespace_t **ret_ns, const char *name)
{
 xmlNodePtr node;
 xmlNsPtr ns = ((void*)0);

 node = xmlNewNode(((void*)0), (const xmlChar *) name);
 if (node == ((void*)0))
  return ((void*)0);
 if (ns_uri) {
  ns = xmlNewNs(node, (const xmlChar *) ns_uri,
         (const xmlChar *) ns_prefix);
  xmlSetNs(node, ns);
 }

 if (ret_ns)
  *ret_ns = (xml_namespace_t *) ns;

 return (xml_node_t *) node;
}
