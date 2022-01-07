
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
typedef int xmlNodePtr ;
typedef int xmlChar ;
struct xml_node_ctx {int dummy; } ;


 scalar_t__ xmlGetNoNsProp (int ,int const*) ;

char * xml_node_get_attr_value(struct xml_node_ctx *ctx, xml_node_t *node,
          char *name)
{
 return (char *) xmlGetNoNsProp((xmlNodePtr) node,
           (const xmlChar *) name);
}
