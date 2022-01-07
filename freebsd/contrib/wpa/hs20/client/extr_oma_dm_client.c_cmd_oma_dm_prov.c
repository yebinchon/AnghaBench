
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {scalar_t__ pps_cred_set; int xml; } ;


 int MSG_INFO ;
 int * build_oma_dm_1_sub_reg (struct hs20_osu_client*,char const*,int) ;
 int * oma_dm_process (struct hs20_osu_client*,char const*,int *,int,char**,int *,int *) ;
 int * oma_dm_send_recv (struct hs20_osu_client*,char*,int *,int *,int *,int *,int *,int *) ;
 int os_free (char*) ;
 int wpa_printf (int ,char*) ;
 int write_summary (struct hs20_osu_client*,char*) ;
 int xml_node_free (int ,int *) ;

int cmd_oma_dm_prov(struct hs20_osu_client *ctx, const char *url)
{
 xml_node_t *syncml, *resp;
 char *resp_uri = ((void*)0);
 int msgid = 0;

 if (url == ((void*)0)) {
  wpa_printf(MSG_INFO, "Invalid prov command (missing URL)");
  return -1;
 }

 wpa_printf(MSG_INFO, "OMA-DM credential provisioning requested");
 write_summary(ctx, "OMA-DM credential provisioning");

 msgid++;
 syncml = build_oma_dm_1_sub_reg(ctx, url, msgid);
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

 return ctx->pps_cred_set ? 0 : -1;
}
