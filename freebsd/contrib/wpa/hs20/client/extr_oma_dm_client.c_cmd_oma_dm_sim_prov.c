
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int no_reconnect; scalar_t__ pps_cred_set; int ifname; int pps_fname; int xml; } ;


 int MSG_INFO ;
 int * build_oma_dm_1_sub_prov (struct hs20_osu_client*,char const*,int) ;
 int cmd_set_pps (struct hs20_osu_client*,int ) ;
 int * oma_dm_process (struct hs20_osu_client*,char const*,int *,int,char**,int *,int *) ;
 int * oma_dm_send_recv (struct hs20_osu_client*,char*,int *,int *,int *,int *,int *,int *) ;
 int os_free (char*) ;
 scalar_t__ wait_ip_addr (int ,int) ;
 scalar_t__ wpa_command (int ,char*) ;
 int wpa_printf (int ,char*) ;
 int write_summary (struct hs20_osu_client*,char*) ;
 int xml_node_free (int ,int *) ;

int cmd_oma_dm_sim_prov(struct hs20_osu_client *ctx, const char *url)
{
 xml_node_t *syncml, *resp;
 char *resp_uri = ((void*)0);
 int msgid = 0;

 if (url == ((void*)0)) {
  wpa_printf(MSG_INFO, "Invalid prov command (missing URL)");
  return -1;
 }

 wpa_printf(MSG_INFO, "OMA-DM SIM provisioning requested");
 ctx->no_reconnect = 2;

 wpa_printf(MSG_INFO, "Wait for IP address before starting SIM provisioning");
 write_summary(ctx, "Wait for IP address before starting SIM provisioning");

 if (wait_ip_addr(ctx->ifname, 15) < 0) {
  wpa_printf(MSG_INFO, "Could not get IP address for WLAN - try connection anyway");
 }
 write_summary(ctx, "OMA-DM SIM provisioning");

 msgid++;
 syncml = build_oma_dm_1_sub_prov(ctx, url, msgid);
 if (syncml == ((void*)0))
  return -1;

 while (syncml) {
  resp = oma_dm_send_recv(ctx, resp_uri ? resp_uri : url,
     syncml, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
  if (resp == ((void*)0))
   return -1;

  msgid++;
  syncml = oma_dm_process(ctx, url, resp, msgid, &resp_uri,
     ((void*)0), ((void*)0));
  xml_node_free(ctx->xml, resp);
 }

 os_free(resp_uri);

 if (ctx->pps_cred_set) {
  wpa_printf(MSG_INFO, "Updating wpa_supplicant credentials");
  cmd_set_pps(ctx, ctx->pps_fname);

  wpa_printf(MSG_INFO, "Requesting reconnection with updated configuration");
  write_summary(ctx, "Requesting reconnection with updated configuration");
  if (wpa_command(ctx->ifname, "INTERWORKING_SELECT auto") < 0) {
   wpa_printf(MSG_INFO, "Failed to request wpa_supplicant to reconnect");
   write_summary(ctx, "Failed to request wpa_supplicant to reconnect");
   return -1;
  }
 }

 return ctx->pps_cred_set ? 0 : -1;
}
