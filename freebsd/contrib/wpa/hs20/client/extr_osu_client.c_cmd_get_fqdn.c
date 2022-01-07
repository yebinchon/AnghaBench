
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; } ;
typedef int FILE ;


 int MSG_INFO ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,char*) ;
 int * get_child_node (int ,int *,char*) ;
 int * node_from_file (int ,char const*) ;
 int wpa_printf (int ,char*,char const*) ;
 int xml_node_free (int ,int *) ;
 char* xml_node_get_text (int ,int *) ;
 int xml_node_get_text_free (int ,char*) ;

__attribute__((used)) static int cmd_get_fqdn(struct hs20_osu_client *ctx, const char *pps_fname)
{
 xml_node_t *pps, *node;
 char *fqdn = ((void*)0);

 pps = node_from_file(ctx->xml, pps_fname);
 if (pps == ((void*)0)) {
  wpa_printf(MSG_INFO, "Could not read or parse '%s'", pps_fname);
  return -1;
 }

 node = get_child_node(ctx->xml, pps, "HomeSP/FQDN");
 if (node)
  fqdn = xml_node_get_text(ctx->xml, node);

 xml_node_free(ctx->xml, pps);

 if (fqdn) {
  FILE *f = fopen("pps-fqdn", "w");
  if (f) {
   fprintf(f, "%s", fqdn);
   fclose(f);
  }
  xml_node_get_text_free(ctx->xml, fqdn);
  return 0;
 }

 xml_node_get_text_free(ctx->xml, fqdn);
 return -1;
}
