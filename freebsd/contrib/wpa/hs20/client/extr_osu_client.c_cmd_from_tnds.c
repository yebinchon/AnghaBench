
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; } ;


 int MSG_INFO ;
 int * node_from_file (int ,char const*) ;
 int node_to_file (int ,char const*,int *) ;
 int * tnds_to_mo (int ,int *) ;
 int wpa_printf (int ,char*,char const*) ;
 int xml_node_free (int ,int *) ;

__attribute__((used)) static void cmd_from_tnds(struct hs20_osu_client *ctx, const char *in_fname,
     const char *out_fname)
{
 xml_node_t *tnds, *mo;

 tnds = node_from_file(ctx->xml, in_fname);
 if (tnds == ((void*)0)) {
  wpa_printf(MSG_INFO, "Could not read or parse '%s'", in_fname);
  return;
 }

 mo = tnds_to_mo(ctx->xml, tnds);
 if (mo) {
  node_to_file(ctx->xml, out_fname, mo);
  xml_node_free(ctx->xml, mo);
 }

 xml_node_free(ctx->xml, tnds);
}
