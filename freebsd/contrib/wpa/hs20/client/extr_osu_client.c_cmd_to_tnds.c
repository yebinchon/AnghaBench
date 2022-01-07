
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; } ;


 int MSG_INFO ;
 int * mo_to_tnds (int ,int *,int,char const*,int *) ;
 int * node_from_file (int ,char const*) ;
 int node_to_file (int ,char const*,int *) ;
 int wpa_printf (int ,char*,char const*) ;
 int xml_node_free (int ,int *) ;

__attribute__((used)) static void cmd_to_tnds(struct hs20_osu_client *ctx, const char *in_fname,
   const char *out_fname, const char *urn, int use_path)
{
 xml_node_t *mo, *node;

 mo = node_from_file(ctx->xml, in_fname);
 if (mo == ((void*)0)) {
  wpa_printf(MSG_INFO, "Could not read or parse '%s'", in_fname);
  return;
 }

 node = mo_to_tnds(ctx->xml, mo, use_path, urn, ((void*)0));
 if (node) {
  node_to_file(ctx->xml, out_fname, node);
  xml_node_free(ctx->xml, node);
 }

 xml_node_free(ctx->xml, mo);
}
