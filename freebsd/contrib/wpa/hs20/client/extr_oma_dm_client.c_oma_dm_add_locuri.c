
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; } ;


 int * xml_node_create (int ,int *,int *,char const*) ;
 int xml_node_create_text (int ,int *,int *,char*,char const*) ;

__attribute__((used)) static void oma_dm_add_locuri(struct hs20_osu_client *ctx, xml_node_t *parent,
         const char *element, const char *uri)
{
 xml_node_t *node;

 node = xml_node_create(ctx->xml, parent, ((void*)0), element);
 if (node == ((void*)0))
  return;
 xml_node_create_text(ctx->xml, node, ((void*)0), "LocURI", uri);
}
