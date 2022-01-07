
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; } ;


 int int2str (int) ;
 int xml_node_create_text (int ,int *,int *,char*,int ) ;

__attribute__((used)) static void oma_dm_add_cmdid(struct hs20_osu_client *ctx, xml_node_t *parent,
        int cmdid)
{
 xml_node_create_text(ctx->xml, parent, ((void*)0), "CmdID", int2str(cmdid));
}
