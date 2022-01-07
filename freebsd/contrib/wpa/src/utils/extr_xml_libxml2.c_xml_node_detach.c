
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
typedef int xmlNodePtr ;
struct xml_node_ctx {int dummy; } ;


 int xmlUnlinkNode (int ) ;

void xml_node_detach(struct xml_node_ctx *ctx, xml_node_t *node)
{
 xmlUnlinkNode((xmlNodePtr) node);
}
