
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct xml_node_ctx {int dummy; } ;


 int * get_first_child_node (struct xml_node_ctx*,int *,char*) ;
 scalar_t__ os_strcmp (char const*,char*) ;
 int * tnds_to_mo_iter (struct xml_node_ctx*,int *,int *,int *) ;
 char* xml_node_get_localname (struct xml_node_ctx*,int *) ;

xml_node_t * tnds_to_mo(struct xml_node_ctx *ctx, xml_node_t *tnds)
{
 const char *name;
 xml_node_t *node;

 name = xml_node_get_localname(ctx, tnds);
 if (name == ((void*)0) || os_strcmp(name, "MgmtTree") != 0)
  return ((void*)0);

 node = get_first_child_node(ctx, tnds, "Node");
 if (!node)
  return ((void*)0);
 return tnds_to_mo_iter(ctx, ((void*)0), node, ((void*)0));
}
