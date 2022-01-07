
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; int client_cert_present; } ;


 int MSG_INFO ;
 int S_IRWXG ;
 int S_IRWXU ;
 int android_update_permission (char*,int) ;
 scalar_t__ est_build_csr (struct hs20_osu_client*,char*) ;
 scalar_t__ est_load_cacerts (struct hs20_osu_client*,char*) ;
 scalar_t__ est_simple_enroll (struct hs20_osu_client*,char*,char*,char*) ;
 int * get_node (int ,int *,char*) ;
 int mkdir (char*,int) ;
 scalar_t__ os_strcasecmp (char*,char*) ;
 int wpa_printf (int ,char*,...) ;
 int write_summary (struct hs20_osu_client*,char*,char*) ;
 char* xml_node_get_attr_value (int ,int *,char*) ;
 int xml_node_get_attr_value_free (int ,char*) ;
 char* xml_node_get_base64_text (int ,int *,int *) ;
 char* xml_node_get_text (int ,int *) ;
 int xml_node_get_text_free (int ,char*) ;

int osu_get_certificate(struct hs20_osu_client *ctx, xml_node_t *getcert)
{
 xml_node_t *node;
 char *url, *user = ((void*)0), *pw = ((void*)0);
 char *proto;
 int ret = -1;

 proto = xml_node_get_attr_value(ctx->xml, getcert,
     "enrollmentProtocol");
 if (!proto)
  return -1;
 wpa_printf(MSG_INFO, "getCertificate - enrollmentProtocol=%s", proto);
 write_summary(ctx, "getCertificate - enrollmentProtocol=%s", proto);
 if (os_strcasecmp(proto, "EST") != 0) {
  wpa_printf(MSG_INFO, "Unsupported enrollmentProtocol");
  xml_node_get_attr_value_free(ctx->xml, proto);
  return -1;
 }
 xml_node_get_attr_value_free(ctx->xml, proto);

 node = get_node(ctx->xml, getcert, "enrollmentServerURI");
 if (node == ((void*)0)) {
  wpa_printf(MSG_INFO, "Could not find enrollmentServerURI node");
  xml_node_get_attr_value_free(ctx->xml, proto);
  return -1;
 }
 url = xml_node_get_text(ctx->xml, node);
 if (url == ((void*)0)) {
  wpa_printf(MSG_INFO, "Could not get URL text");
  return -1;
 }
 wpa_printf(MSG_INFO, "enrollmentServerURI: %s", url);
 write_summary(ctx, "enrollmentServerURI: %s", url);

 node = get_node(ctx->xml, getcert, "estUserID");
 if (node == ((void*)0) && !ctx->client_cert_present) {
  wpa_printf(MSG_INFO, "Could not find estUserID node");
  goto fail;
 }
 if (node) {
  user = xml_node_get_text(ctx->xml, node);
  if (user == ((void*)0)) {
   wpa_printf(MSG_INFO, "Could not get estUserID text");
   goto fail;
  }
  wpa_printf(MSG_INFO, "estUserID: %s", user);
  write_summary(ctx, "estUserID: %s", user);
 }

 node = get_node(ctx->xml, getcert, "estPassword");
 if (node == ((void*)0) && !ctx->client_cert_present) {
  wpa_printf(MSG_INFO, "Could not find estPassword node");
  goto fail;
 }
 if (node) {
  pw = xml_node_get_base64_text(ctx->xml, node, ((void*)0));
  if (pw == ((void*)0)) {
   wpa_printf(MSG_INFO, "Could not get estPassword text");
   goto fail;
  }
  wpa_printf(MSG_INFO, "estPassword: %s", pw);
 }

 mkdir("Cert", S_IRWXU);
 android_update_permission("Cert", S_IRWXU | S_IRWXG);

 if (est_load_cacerts(ctx, url) < 0 ||
     est_build_csr(ctx, url) < 0 ||
     est_simple_enroll(ctx, url, user, pw) < 0)
  goto fail;

 ret = 0;
fail:
 xml_node_get_text_free(ctx->xml, url);
 xml_node_get_text_free(ctx->xml, user);
 xml_node_get_text_free(ctx->xml, pw);

 return ret;
}
