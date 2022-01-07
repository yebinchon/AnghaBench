
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; } ;


 int oma_dm_add_locuri (struct hs20_osu_client*,int *,char*,char const*) ;
 int * xml_node_create (int ,int *,int *,char*) ;
 int xml_node_create_text (int ,int *,int *,char*,char const*) ;
 int xml_node_create_text_ns (int ,int *,char*,char*,char*) ;

__attribute__((used)) static void add_item(struct hs20_osu_client *ctx, xml_node_t *parent,
       const char *locuri, const char *data)
{
 xml_node_t *item, *node;

 item = xml_node_create(ctx->xml, parent, ((void*)0), "Item");
 oma_dm_add_locuri(ctx, item, "Source", locuri);
 node = xml_node_create(ctx->xml, item, ((void*)0), "Meta");
 xml_node_create_text_ns(ctx->xml, node, "syncml:metinf", "Format",
    "Chr");
 xml_node_create_text_ns(ctx->xml, node, "syncml:metinf", "Type",
    "text/plain");
 xml_node_create_text(ctx->xml, item, ((void*)0), "Data", data);
}
