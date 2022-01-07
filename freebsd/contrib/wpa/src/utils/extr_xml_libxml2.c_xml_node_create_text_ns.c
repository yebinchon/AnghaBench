
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
typedef int xmlNsPtr ;
typedef scalar_t__ xmlNodePtr ;
typedef int xmlChar ;
struct xml_node_ctx {int dummy; } ;


 int xmlNewNs (scalar_t__,int const*,int *) ;
 scalar_t__ xmlNewTextChild (scalar_t__,int *,int const*,int const*) ;
 int xmlSetNs (scalar_t__,int ) ;

xml_node_t * xml_node_create_text_ns(struct xml_node_ctx *ctx,
         xml_node_t *parent, const char *ns_uri,
         const char *name, const char *value)
{
 xmlNodePtr node;
 xmlNsPtr ns;

 node = xmlNewTextChild((xmlNodePtr) parent, ((void*)0),
          (const xmlChar *) name, (const xmlChar *) value);
 ns = xmlNewNs(node, (const xmlChar *) ns_uri, ((void*)0));
 xmlSetNs(node, ns);
 return (xml_node_t *) node;
}
