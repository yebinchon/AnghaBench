
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
typedef int xmlNodePtr ;
typedef int xmlChar ;
struct xml_node_ctx {int dummy; } ;


 int xmlNodeSetContent (int ,int *) ;

void xml_node_set_text(struct xml_node_ctx *ctx, xml_node_t *node,
         const char *value)
{

 xmlNodeSetContent((xmlNodePtr) node, (xmlChar *) value);
}
