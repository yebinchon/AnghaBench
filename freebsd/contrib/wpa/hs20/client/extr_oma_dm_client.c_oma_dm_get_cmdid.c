
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; } ;


 int atoi (char*) ;
 int * get_node (int ,int *,char*) ;
 char* xml_node_get_text (int ,int *) ;
 int xml_node_get_text_free (int ,char*) ;

__attribute__((used)) static int oma_dm_get_cmdid(struct hs20_osu_client *ctx, xml_node_t *node)
{
 xml_node_t *cnode;
 char *str;
 int ret;

 cnode = get_node(ctx->xml, node, "CmdID");
 if (cnode == ((void*)0))
  return 0;

 str = xml_node_get_text(ctx->xml, cnode);
 if (str == ((void*)0))
  return 0;
 ret = atoi(str);
 xml_node_get_text_free(ctx->xml, str);
 return ret;
}
