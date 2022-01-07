
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct xml_node_ctx {int dummy; } ;


 int * get_first_child_node (struct xml_node_ctx*,int *,char const*) ;
 char* xml_node_get_text (struct xml_node_ctx*,int *) ;

__attribute__((used)) static char * get_node_text(struct xml_node_ctx *ctx, xml_node_t *node,
       const char *node_name)
{
 node = get_first_child_node(ctx, node, node_name);
 if (node == ((void*)0))
  return ((void*)0);
 return xml_node_get_text(ctx, node);
}
