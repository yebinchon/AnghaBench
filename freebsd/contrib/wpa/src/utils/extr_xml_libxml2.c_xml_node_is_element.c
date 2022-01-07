
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xml_node_t ;
typedef TYPE_1__* xmlNodePtr ;
struct xml_node_ctx {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ XML_ELEMENT_NODE ;

int xml_node_is_element(struct xml_node_ctx *ctx, xml_node_t *node)
{
 return ((xmlNodePtr) node)->type == XML_ELEMENT_NODE;
}
