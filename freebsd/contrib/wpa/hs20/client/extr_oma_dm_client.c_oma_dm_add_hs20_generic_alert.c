
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; } ;
typedef int buf ;


 int DM_GENERIC_ALERT ;
 int DM_URI_PPS ;
 int * add_alert (struct hs20_osu_client*,int *,int,int ) ;
 int oma_dm_add_locuri (struct hs20_osu_client*,int *,char*,int ) ;
 int snprintf (char*,int,char*,char const*) ;
 int * xml_node_create (int ,int *,int *,char*) ;
 int xml_node_create_text (int ,int *,int *,char*,char const*) ;
 int xml_node_create_text_ns (int ,int *,char*,char*,char*) ;

__attribute__((used)) static void oma_dm_add_hs20_generic_alert(struct hs20_osu_client *ctx,
       xml_node_t *syncbody,
       int cmdid, const char *oper,
       const char *data)
{
 xml_node_t *node, *item;
 char buf[200];

 node = add_alert(ctx, syncbody, cmdid, DM_GENERIC_ALERT);

 item = xml_node_create(ctx->xml, node, ((void*)0), "Item");
 oma_dm_add_locuri(ctx, item, "Source", DM_URI_PPS);
 node = xml_node_create(ctx->xml, item, ((void*)0), "Meta");
 snprintf(buf, sizeof(buf), "Reversed-Domain-Name: %s", oper);
 xml_node_create_text_ns(ctx->xml, node, "syncml:metinf", "Type", buf);
 xml_node_create_text_ns(ctx->xml, node, "syncml:metinf", "Format",
    "xml");
 xml_node_create_text(ctx->xml, item, ((void*)0), "Data", data);
}
