
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int ifname; scalar_t__ pps_updated; int xml; } ;


 int MSG_INFO ;
 int * build_oma_dm_1_pol_upd (struct hs20_osu_client*,char const*,int) ;
 int cmd_set_pps (struct hs20_osu_client*,char const*) ;
 int * oma_dm_process (struct hs20_osu_client*,char const*,int *,int,char**,int *,char const*) ;
 int * oma_dm_send_recv (struct hs20_osu_client*,char*,int *,int *,char const*,char const*,char const*,char const*) ;
 int os_free (char*) ;
 scalar_t__ wpa_command (int ,char*) ;
 int wpa_printf (int ,char*) ;
 int write_summary (struct hs20_osu_client*,char*) ;
 int xml_node_free (int ,int *) ;

void oma_dm_pol_upd(struct hs20_osu_client *ctx, const char *address,
      const char *pps_fname,
      const char *client_cert, const char *client_key,
      const char *cred_username, const char *cred_password,
      xml_node_t *pps)
{
 xml_node_t *syncml, *resp;
 char *resp_uri = ((void*)0);
 int msgid = 0;

 wpa_printf(MSG_INFO, "OMA-DM policy update");
 write_summary(ctx, "OMA-DM policy update");

 msgid++;
 syncml = build_oma_dm_1_pol_upd(ctx, address, msgid);
 if (syncml == ((void*)0))
  return;

 while (syncml) {
  resp = oma_dm_send_recv(ctx, resp_uri ? resp_uri : address,
     syncml, ((void*)0), cred_username,
     cred_password, client_cert, client_key);
  if (resp == ((void*)0))
   return;

  msgid++;
  syncml = oma_dm_process(ctx, address, resp, msgid, &resp_uri,
     pps, pps_fname);
  xml_node_free(ctx->xml, resp);
 }

 os_free(resp_uri);

 if (ctx->pps_updated) {
  wpa_printf(MSG_INFO, "Update wpa_supplicant credential based on updated PPS MO");
  write_summary(ctx, "Update wpa_supplicant credential based on updated PPS MO and request connection");
  cmd_set_pps(ctx, pps_fname);
  if (wpa_command(ctx->ifname, "INTERWORKING_SELECT auto") < 0) {
   wpa_printf(MSG_INFO,
       "Failed to request wpa_supplicant to reconnect");
   write_summary(ctx,
          "Failed to request wpa_supplicant to reconnect");
  }
 }
}
