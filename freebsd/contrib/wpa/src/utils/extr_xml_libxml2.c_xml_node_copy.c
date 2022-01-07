
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
typedef int xmlNodePtr ;
struct xml_node_ctx {int dummy; } ;


 scalar_t__ xmlCopyNode (int ,int) ;

xml_node_t * xml_node_copy(struct xml_node_ctx *ctx, xml_node_t *node)
{
 if (node == ((void*)0))
  return ((void*)0);
 return (xml_node_t *) xmlCopyNode((xmlNodePtr) node, 1);
}
