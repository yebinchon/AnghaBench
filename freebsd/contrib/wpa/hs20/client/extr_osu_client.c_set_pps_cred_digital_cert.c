
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int ifname; } ;
typedef int dir ;
typedef int buf ;


 int MSG_INFO ;
 int * getcwd (char*,int) ;
 scalar_t__ os_file_exists (char*) ;
 int os_snprintf (char*,int,char*,char*,char const*) ;
 scalar_t__ os_snprintf_error (int,int) ;
 scalar_t__ set_cred_quoted (int ,int,char*,char*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void set_pps_cred_digital_cert(struct hs20_osu_client *ctx, int id,
          xml_node_t *node, const char *fqdn)
{
 char buf[200], dir[200];
 int res;

 wpa_printf(MSG_INFO, "- Credential/DigitalCertificate");

 if (getcwd(dir, sizeof(dir)) == ((void*)0))
  return;


 if (set_cred_quoted(ctx->ifname, id, "username", "cert") < 0) {
  wpa_printf(MSG_INFO, "Failed to set username");
 }

 res = os_snprintf(buf, sizeof(buf), "%s/SP/%s/client-cert.pem", dir,
     fqdn);
 if (os_snprintf_error(sizeof(buf), res))
  return;
 if (os_file_exists(buf)) {
  if (set_cred_quoted(ctx->ifname, id, "client_cert", buf) < 0) {
   wpa_printf(MSG_INFO, "Failed to set client_cert");
  }
 }

 res = os_snprintf(buf, sizeof(buf), "%s/SP/%s/client-key.pem", dir,
     fqdn);
 if (os_snprintf_error(sizeof(buf), res))
  return;
 if (os_file_exists(buf)) {
  if (set_cred_quoted(ctx->ifname, id, "private_key", buf) < 0) {
   wpa_printf(MSG_INFO, "Failed to set private_key");
  }
 }
}
