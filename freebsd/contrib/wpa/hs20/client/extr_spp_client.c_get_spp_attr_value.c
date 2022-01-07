
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct xml_node_ctx {int dummy; } ;


 int SPP_NS_URI ;
 char* xml_node_get_attr_value_ns (struct xml_node_ctx*,int *,int ,char*) ;

__attribute__((used)) static char * get_spp_attr_value(struct xml_node_ctx *ctx, xml_node_t *node,
     char *attr_name)
{
 return xml_node_get_attr_value_ns(ctx, node, SPP_NS_URI, attr_name);
}
