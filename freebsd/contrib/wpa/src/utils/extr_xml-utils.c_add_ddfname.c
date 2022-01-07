
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct xml_node_ctx {int dummy; } ;


 int * xml_node_create (struct xml_node_ctx*,int *,int *,char*) ;
 int xml_node_create_text (struct xml_node_ctx*,int *,int *,char*,char const*) ;

__attribute__((used)) static int add_ddfname(struct xml_node_ctx *ctx, xml_node_t *parent,
         const char *urn)
{
 xml_node_t *node;

 node = xml_node_create(ctx, parent, ((void*)0), "RTProperties");
 if (node == ((void*)0))
  return -1;
 node = xml_node_create(ctx, node, ((void*)0), "Type");
 if (node == ((void*)0))
  return -1;
 xml_node_create_text(ctx, node, ((void*)0), "DDFName", urn);
 return 0;
}
