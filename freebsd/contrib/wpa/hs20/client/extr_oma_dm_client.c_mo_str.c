
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; } ;


 int MSG_INFO ;
 int * mo_to_tnds (int ,int *,int ,char const*,char*) ;
 int * node_from_file (int ,char const*) ;
 int wpa_printf (int ,char*,char*) ;
 int xml_node_free (int ,int *) ;
 char* xml_node_to_str (int ,int *) ;

__attribute__((used)) static char * mo_str(struct hs20_osu_client *ctx, const char *urn,
       const char *fname)
{
 xml_node_t *fnode, *tnds;
 char *str;

 fnode = node_from_file(ctx->xml, fname);
 if (!fnode)
  return ((void*)0);
 tnds = mo_to_tnds(ctx->xml, fnode, 0, urn, "syncml:dmddf1.2");
 xml_node_free(ctx->xml, fnode);
 if (!tnds)
  return ((void*)0);

 str = xml_node_to_str(ctx->xml, tnds);
 xml_node_free(ctx->xml, tnds);
 if (str == ((void*)0))
  return ((void*)0);
 wpa_printf(MSG_INFO, "MgmtTree: %s", str);

 return str;
}
