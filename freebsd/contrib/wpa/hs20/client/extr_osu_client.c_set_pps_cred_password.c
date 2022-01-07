
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int ifname; int xml; } ;


 int MSG_INFO ;
 int free (char*) ;
 char* malloc (int) ;
 scalar_t__ set_cred (int ,int,char*,char*) ;
 int snprintf (char*,int,char*,char) ;
 int wpa_printf (int ,char*,...) ;
 char* xml_node_get_base64_text (int ,int *,int*) ;

__attribute__((used)) static void set_pps_cred_password(struct hs20_osu_client *ctx, int id,
      xml_node_t *node)
{
 int len, i;
 char *pw, *hex, *pos, *end;

 pw = xml_node_get_base64_text(ctx->xml, node, &len);
 if (pw == ((void*)0))
  return;

 wpa_printf(MSG_INFO, "- Credential/UsernamePassword/Password = %s", pw);

 hex = malloc(len * 2 + 1);
 if (hex == ((void*)0)) {
  free(pw);
  return;
 }
 end = hex + len * 2 + 1;
 pos = hex;
 for (i = 0; i < len; i++) {
  snprintf(pos, end - pos, "%02x", pw[i]);
  pos += 2;
 }
 free(pw);

 if (set_cred(ctx->ifname, id, "password", hex) < 0)
  wpa_printf(MSG_INFO, "Failed to set cred password");
 free(hex);
}
