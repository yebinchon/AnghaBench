
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; } ;


 int MSG_INFO ;
 int free (char*) ;
 int * get_child_node (int ,int *,char const*) ;
 int * get_node (int ,int *,char*) ;
 int wpa_printf (int ,char*,...) ;
 char* xml_node_get_base64_text (int ,int *,int *) ;
 char* xml_node_get_text (int ,int *) ;
 int xml_node_get_text_free (int ,char*) ;

void get_user_pw(struct hs20_osu_client *ctx, xml_node_t *pps,
   const char *alt_loc, char **user, char **pw)
{
 xml_node_t *node;

 node = get_child_node(ctx->xml, pps,
         "Credential/UsernamePassword/Username");
 if (node)
  *user = xml_node_get_text(ctx->xml, node);

 node = get_child_node(ctx->xml, pps,
         "Credential/UsernamePassword/Password");
 if (node)
  *pw = xml_node_get_base64_text(ctx->xml, node, ((void*)0));

 node = get_child_node(ctx->xml, pps, alt_loc);
 if (node) {
  xml_node_t *a;
  a = get_node(ctx->xml, node, "Username");
  if (a) {
   xml_node_get_text_free(ctx->xml, *user);
   *user = xml_node_get_text(ctx->xml, a);
   wpa_printf(MSG_INFO, "Use OSU username '%s'", *user);
  }

  a = get_node(ctx->xml, node, "Password");
  if (a) {
   free(*pw);
   *pw = xml_node_get_base64_text(ctx->xml, a, ((void*)0));
   wpa_printf(MSG_INFO, "Use OSU password");
  }
 }
}
