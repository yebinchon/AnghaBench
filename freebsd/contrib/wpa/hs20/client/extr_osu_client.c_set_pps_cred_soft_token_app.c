
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; } ;


 int MSG_INFO ;
 int wpa_printf (int ,char*,char*) ;
 char* xml_node_get_text (int ,int *) ;
 int xml_node_get_text_free (int ,char*) ;

__attribute__((used)) static void set_pps_cred_soft_token_app(struct hs20_osu_client *ctx, int id,
     xml_node_t *node)
{
 char *str = xml_node_get_text(ctx->xml, node);
 if (str == ((void*)0))
  return;
 wpa_printf(MSG_INFO, "- Credential/UsernamePassword/SoftTokenApp = %s",
     str);

 xml_node_get_text_free(ctx->xml, str);
}
