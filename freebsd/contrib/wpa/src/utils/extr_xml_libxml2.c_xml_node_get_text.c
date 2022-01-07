
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
typedef int xmlNodePtr ;
struct xml_node_ctx {int dummy; } ;


 scalar_t__ xmlChildElementCount (int ) ;
 scalar_t__ xmlNodeGetContent (int ) ;

char * xml_node_get_text(struct xml_node_ctx *ctx, xml_node_t *node)
{
 if (xmlChildElementCount((xmlNodePtr) node) > 0)
  return ((void*)0);
 return (char *) xmlNodeGetContent((xmlNodePtr) node);
}
