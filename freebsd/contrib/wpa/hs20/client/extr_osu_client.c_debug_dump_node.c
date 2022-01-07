
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; } ;


 int MSG_DEBUG ;
 int free (char*) ;
 int wpa_printf (int ,char*,char const*,char*) ;
 char* xml_node_to_str (int ,int *) ;

void debug_dump_node(struct hs20_osu_client *ctx, const char *title,
       xml_node_t *node)
{
 char *str = xml_node_to_str(ctx->xml, node);
 wpa_printf(MSG_DEBUG, "[hs20] %s: '%s'", title, str);
 free(str);
}
