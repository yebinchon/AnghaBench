
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; } ;


 int * get_node (int ,int *,char*) ;
 char* os_strdup (char*) ;
 char* xml_node_get_text (int ,int *) ;
 int xml_node_get_text_free (int ,char*) ;

__attribute__((used)) static char * oma_dm_get_target_locuri(struct hs20_osu_client *ctx,
           xml_node_t *node)
{
 xml_node_t *locuri;
 char *uri, *ret = ((void*)0);

 locuri = get_node(ctx->xml, node, "Item/Target/LocURI");
 if (locuri == ((void*)0))
  return ((void*)0);

 uri = xml_node_get_text(ctx->xml, locuri);
 if (uri)
  ret = os_strdup(uri);
 xml_node_get_text_free(ctx->xml, uri);
 return ret;
}
