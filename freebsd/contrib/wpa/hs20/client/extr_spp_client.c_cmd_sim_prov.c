
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hs20_osu_client {scalar_t__ pps_cred_set; int ca_fname; int http; int ifname; int server_url; } ;


 int MSG_INFO ;
 int SPP_SUBSCRIPTION_REGISTRATION ;
 int os_free (int ) ;
 int os_strdup (char const*) ;
 scalar_t__ soap_init_client (int ,char const*,int ,int *,int *,int *,int *) ;
 int spp_post_dev_data (struct hs20_osu_client*,int ,char*,int *,int *) ;
 scalar_t__ wait_ip_addr (int ,int) ;
 int wpa_printf (int ,char*) ;

int cmd_sim_prov(struct hs20_osu_client *ctx, const char *url)
{
 if (url == ((void*)0)) {
  wpa_printf(MSG_INFO, "Invalid prov command (missing URL)");
  return -1;
 }

 wpa_printf(MSG_INFO, "SIM provisioning requested");

 os_free(ctx->server_url);
 ctx->server_url = os_strdup(url);

 wpa_printf(MSG_INFO, "Wait for IP address before starting SIM provisioning");

 if (wait_ip_addr(ctx->ifname, 15) < 0) {
  wpa_printf(MSG_INFO, "Could not get IP address for WLAN - try connection anyway");
 }

 if (soap_init_client(ctx->http, url, ctx->ca_fname, ((void*)0), ((void*)0), ((void*)0),
        ((void*)0)) < 0)
  return -1;
 spp_post_dev_data(ctx, SPP_SUBSCRIPTION_REGISTRATION,
     "Subscription provisioning", ((void*)0), ((void*)0));

 return ctx->pps_cred_set ? 0 : -1;
}
