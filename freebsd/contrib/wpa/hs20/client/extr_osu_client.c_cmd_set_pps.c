
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; } ;


 int MSG_INFO ;
 int * node_from_file (int ,char const*) ;
 int os_free (char*) ;
 char* os_strchr (char*,char) ;
 char* os_strdup (char const*) ;
 char* os_strstr (char const*,char*) ;
 int set_pps (struct hs20_osu_client*,int *,char const*) ;
 int wpa_printf (int ,char*,char const*) ;
 int xml_node_free (int ,int *) ;

void cmd_set_pps(struct hs20_osu_client *ctx, const char *pps_fname)
{
 xml_node_t *pps;
 const char *fqdn;
 char *fqdn_buf = ((void*)0), *pos;

 pps = node_from_file(ctx->xml, pps_fname);
 if (pps == ((void*)0)) {
  wpa_printf(MSG_INFO, "Could not read or parse '%s'", pps_fname);
  return;
 }

 fqdn = os_strstr(pps_fname, "SP/");
 if (fqdn) {
  fqdn_buf = os_strdup(fqdn + 3);
  if (fqdn_buf == ((void*)0))
   return;
  pos = os_strchr(fqdn_buf, '/');
  if (pos)
   *pos = '\0';
  fqdn = fqdn_buf;
 } else
  fqdn = "wi-fi.org";

 wpa_printf(MSG_INFO, "Set PPS MO info to wpa_supplicant - SP FQDN %s",
     fqdn);
 set_pps(ctx, pps, fqdn);

 os_free(fqdn_buf);
 xml_node_free(ctx->xml, pps);
}
