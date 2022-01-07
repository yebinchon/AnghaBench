
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
typedef int xml_namespace_t ;
typedef int xmlNsPtr ;
typedef scalar_t__ xmlNodePtr ;
typedef int xmlChar ;
struct xml_node_ctx {int dummy; } ;


 scalar_t__ xmlNewChild (scalar_t__,int ,int const*,int *) ;

xml_node_t * xml_node_create(struct xml_node_ctx *ctx, xml_node_t *parent,
        xml_namespace_t *ns, const char *name)
{
 xmlNodePtr node;
 node = xmlNewChild((xmlNodePtr) parent, (xmlNsPtr) ns,
      (const xmlChar *) name, ((void*)0));
 return (xml_node_t *) node;
}
