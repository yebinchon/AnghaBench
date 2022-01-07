
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
typedef int xml_namespace_t ;
typedef int xmlNsPtr ;
typedef int xmlNodePtr ;
typedef int xmlChar ;
typedef scalar_t__ xmlAttrPtr ;
struct xml_node_ctx {int dummy; } ;


 scalar_t__ xmlNewNsProp (int ,int ,int const*,int const*) ;
 scalar_t__ xmlNewProp (int ,int const*,int const*) ;

int xml_node_add_attr(struct xml_node_ctx *ctx, xml_node_t *node,
        xml_namespace_t *ns, const char *name, const char *value)
{
 xmlAttrPtr attr;

 if (ns) {
  attr = xmlNewNsProp((xmlNodePtr) node, (xmlNsPtr) ns,
        (const xmlChar *) name,
        (const xmlChar *) value);
 } else {
  attr = xmlNewProp((xmlNodePtr) node, (const xmlChar *) name,
      (const xmlChar *) value);
 }

 return attr ? 0 : -1;
}
