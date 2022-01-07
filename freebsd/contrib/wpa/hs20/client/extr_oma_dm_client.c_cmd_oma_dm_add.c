
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; int fqdn; } ;


 int MSG_INFO ;
 int * node_from_file (int ,char const*) ;
 int oma_dm_add (struct hs20_osu_client*,int *,int *,char const*) ;
 int os_strdup (char*) ;
 int wpa_printf (int ,char*,...) ;
 int xml_node_free (int ,int *) ;

void cmd_oma_dm_add(struct hs20_osu_client *ctx, const char *pps_fname,
      const char *add_fname)
{
 xml_node_t *pps, *add;
 int res;

 ctx->fqdn = os_strdup("wi-fi.org");

 pps = node_from_file(ctx->xml, pps_fname);
 if (pps == ((void*)0)) {
  wpa_printf(MSG_INFO, "PPS file %s could not be parsed",
      pps_fname);
  return;
 }

 add = node_from_file(ctx->xml, add_fname);
 if (add == ((void*)0)) {
  wpa_printf(MSG_INFO, "Add file %s could not be parsed",
      add_fname);
  xml_node_free(ctx->xml, pps);
  return;
 }

 res = oma_dm_add(ctx, add, pps, pps_fname);
 wpa_printf(MSG_INFO, "oma_dm_add --> %d", res);

 xml_node_free(ctx->xml, pps);
 xml_node_free(ctx->xml, add);
}
