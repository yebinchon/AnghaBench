
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; int fqdn; } ;


 int MSG_INFO ;
 int * node_from_file (int ,char const*) ;
 int oma_dm_replace (struct hs20_osu_client*,int *,int *,char const*) ;
 int os_strdup (char*) ;
 int wpa_printf (int ,char*,...) ;
 int xml_node_free (int ,int *) ;

void cmd_oma_dm_replace(struct hs20_osu_client *ctx, const char *pps_fname,
   const char *replace_fname)
{
 xml_node_t *pps, *replace;
 int res;

 ctx->fqdn = os_strdup("wi-fi.org");

 pps = node_from_file(ctx->xml, pps_fname);
 if (pps == ((void*)0)) {
  wpa_printf(MSG_INFO, "PPS file %s could not be parsed",
      pps_fname);
  return;
 }

 replace = node_from_file(ctx->xml, replace_fname);
 if (replace == ((void*)0)) {
  wpa_printf(MSG_INFO, "Replace file %s could not be parsed",
      replace_fname);
  xml_node_free(ctx->xml, pps);
  return;
 }

 res = oma_dm_replace(ctx, replace, pps, pps_fname);
 wpa_printf(MSG_INFO, "oma_dm_replace --> %d", res);

 xml_node_free(ctx->xml, pps);
 xml_node_free(ctx->xml, replace);
}
