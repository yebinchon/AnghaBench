
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hs20_osu_client {char* ca_fname; scalar_t__ pps_cred_set; int http; int server_url; } ;


 int MSG_INFO ;
 int SPP_SUBSCRIPTION_REGISTRATION ;
 int os_free (int ) ;
 int os_strdup (char const*) ;
 scalar_t__ soap_init_client (int ,char const*,char*,int *,int *,int *,int *) ;
 int spp_post_dev_data (struct hs20_osu_client*,int ,char*,int *,int *) ;
 int unlink (char*) ;
 int wpa_printf (int ,char*,...) ;

int cmd_prov(struct hs20_osu_client *ctx, const char *url)
{
 unlink("Cert/est_cert.der");
 unlink("Cert/est_cert.pem");

 if (url == ((void*)0)) {
  wpa_printf(MSG_INFO, "Invalid prov command (missing URL)");
  return -1;
 }

 wpa_printf(MSG_INFO,
     "Credential provisioning requested - URL: %s ca_fname: %s",
     url, ctx->ca_fname ? ctx->ca_fname : "N/A");

 os_free(ctx->server_url);
 ctx->server_url = os_strdup(url);

 if (soap_init_client(ctx->http, url, ctx->ca_fname, ((void*)0), ((void*)0), ((void*)0),
        ((void*)0)) < 0)
  return -1;
 spp_post_dev_data(ctx, SPP_SUBSCRIPTION_REGISTRATION,
     "Subscription registration", ((void*)0), ((void*)0));

 return ctx->pps_cred_set ? 0 : -1;
}
