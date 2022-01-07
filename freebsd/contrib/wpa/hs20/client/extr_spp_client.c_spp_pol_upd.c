
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int ca_fname; int http; int server_url; } ;


 int MSG_INFO ;
 int SPP_POLICY_UPDATE ;
 int os_free (int ) ;
 int os_strdup (char const*) ;
 scalar_t__ soap_init_client (int ,char const*,int ,char const*,char const*,char const*,char const*) ;
 int spp_post_dev_data (struct hs20_osu_client*,int ,char*,char const*,int *) ;
 int wpa_printf (int ,char*) ;
 int write_summary (struct hs20_osu_client*,char*) ;

void spp_pol_upd(struct hs20_osu_client *ctx, const char *address,
   const char *pps_fname,
   const char *client_cert, const char *client_key,
   const char *cred_username, const char *cred_password,
   xml_node_t *pps)
{
 wpa_printf(MSG_INFO, "SPP policy update");
 write_summary(ctx, "SPP policy update");

 os_free(ctx->server_url);
 ctx->server_url = os_strdup(address);

 if (soap_init_client(ctx->http, address, ctx->ca_fname, cred_username,
        cred_password, client_cert, client_key) == 0) {
  spp_post_dev_data(ctx, SPP_POLICY_UPDATE, "Policy update",
      pps_fname, pps);
 }
}
