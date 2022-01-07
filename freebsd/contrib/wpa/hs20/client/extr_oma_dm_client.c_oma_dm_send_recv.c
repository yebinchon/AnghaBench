
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {char* server_url; int xml; int http; int ca_fname; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int debug_dump_node (struct hs20_osu_client*,char*,int *) ;
 char* http_get_err (int ) ;
 char* http_post (int ,char const*,char*,char*,char const*,int ,char const*,char const*,char const*,char const*,int *) ;
 int os_free (char*) ;
 char* os_strdup (char const*) ;
 int wpa_printf (int ,char*,...) ;
 int write_result (struct hs20_osu_client*,char*,char const*) ;
 int write_summary (struct hs20_osu_client*,char*) ;
 int xml_node_free (int ,int *) ;
 int * xml_node_from_buf (int ,char*) ;
 char* xml_node_to_str (int ,int *) ;

__attribute__((used)) static xml_node_t * oma_dm_send_recv(struct hs20_osu_client *ctx,
         const char *url, xml_node_t *syncml,
         const char *ext_hdr,
         const char *username, const char *password,
         const char *client_cert,
         const char *client_key)
{
 xml_node_t *resp;
 char *str, *res;
 char *resp_uri = ((void*)0);

 str = xml_node_to_str(ctx->xml, syncml);
 xml_node_free(ctx->xml, syncml);
 if (str == ((void*)0))
  return ((void*)0);

 wpa_printf(MSG_INFO, "Send OMA DM Package");
 write_summary(ctx, "Send OMA DM Package");
 os_free(ctx->server_url);
 ctx->server_url = os_strdup(url);
 res = http_post(ctx->http, url, str, "application/vnd.syncml.dm+xml",
   ext_hdr, ctx->ca_fname, username, password,
   client_cert, client_key, ((void*)0));
 os_free(str);
 os_free(resp_uri);
 resp_uri = ((void*)0);

 if (res == ((void*)0)) {
  const char *err = http_get_err(ctx->http);
  if (err) {
   wpa_printf(MSG_INFO, "HTTP error: %s", err);
   write_result(ctx, "HTTP error: %s", err);
  } else {
   write_summary(ctx, "Failed to send OMA DM Package");
  }
  return ((void*)0);
 }
 wpa_printf(MSG_DEBUG, "Server response: %s", res);

 wpa_printf(MSG_INFO, "Process OMA DM Package");
 write_summary(ctx, "Process received OMA DM Package");
 resp = xml_node_from_buf(ctx->xml, res);
 os_free(res);
 if (resp == ((void*)0)) {
  wpa_printf(MSG_INFO, "Failed to parse OMA DM response");
  return ((void*)0);
 }

 debug_dump_node(ctx, "OMA DM Package", resp);

 return resp;
}
