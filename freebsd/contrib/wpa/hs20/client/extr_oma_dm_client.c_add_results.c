
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; } ;


 int add_item (struct hs20_osu_client*,int *,char const*,char const*) ;
 int int2str (int) ;
 int oma_dm_add_cmdid (struct hs20_osu_client*,int *,int) ;
 int * xml_node_create (int ,int *,int *,char*) ;
 int xml_node_create_text (int ,int *,int *,char*,int ) ;

__attribute__((used)) static xml_node_t * add_results(struct hs20_osu_client *ctx, xml_node_t *parent,
    int msgref, int cmdref, int cmdid,
    const char *locuri, const char *data)
{
 xml_node_t *node;

 node = xml_node_create(ctx->xml, parent, ((void*)0), "Results");
 if (node == ((void*)0))
  return ((void*)0);

 oma_dm_add_cmdid(ctx, node, cmdid);
 xml_node_create_text(ctx->xml, node, ((void*)0), "MsgRef", int2str(msgref));
 xml_node_create_text(ctx->xml, node, ((void*)0), "CmdRef", int2str(cmdref));
 add_item(ctx, node, locuri, data);

 return node;
}
