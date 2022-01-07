
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
typedef int xmlNodePtr ;
typedef int xmlChar ;
struct xml_node_ctx {int dummy; } ;


 scalar_t__ xmlGetNsProp (int ,int const*,int const*) ;

char * xml_node_get_attr_value_ns(struct xml_node_ctx *ctx, xml_node_t *node,
      const char *ns_uri, char *name)
{
 return (char *) xmlGetNsProp((xmlNodePtr) node, (const xmlChar *) name,
         (const xmlChar *) ns_uri);
}
