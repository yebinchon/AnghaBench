
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int xml; } ;


 int DM_RESP_BAD_REQUEST ;
 int DM_RESP_COMMAND_FAILED ;
 int DM_RESP_OK ;
 int MSG_INFO ;
 int debug_dump_node (struct hs20_osu_client*,char*,int *) ;
 int * get_node (int ,int *,char*) ;
 scalar_t__ os_strcasecmp (char const*,char*) ;
 int osu_get_certificate (struct hs20_osu_client*,int *) ;
 int wpa_printf (int ,char*,...) ;
 int write_summary (struct hs20_osu_client*,char*) ;
 int xml_node_free (int ,int *) ;
 int * xml_node_from_buf (int ,char*) ;
 char* xml_node_get_localname (int ,int *) ;
 char* xml_node_get_text (int ,int *) ;
 int xml_node_get_text_free (int ,char*) ;

__attribute__((used)) static int oma_dm_exec_get_cert(struct hs20_osu_client *ctx, xml_node_t *exec)
{
 xml_node_t *node, *getcert;
 char *data;
 const char *name;
 int res;

 wpa_printf(MSG_INFO, "Client certificate enrollment");
 write_summary(ctx, "Client certificate enrollment");

 node = get_node(ctx->xml, exec, "Item/Data");
 if (node == ((void*)0)) {
  wpa_printf(MSG_INFO, "No Data node found");
  return DM_RESP_BAD_REQUEST;
 }

 data = xml_node_get_text(ctx->xml, node);
 if (data == ((void*)0)) {
  wpa_printf(MSG_INFO, "Invalid data");
  return DM_RESP_BAD_REQUEST;
 }
 wpa_printf(MSG_INFO, "Data: %s", data);
 getcert = xml_node_from_buf(ctx->xml, data);
 xml_node_get_text_free(ctx->xml, data);

 if (getcert == ((void*)0)) {
  wpa_printf(MSG_INFO, "Could not parse Item/Data node contents");
  return DM_RESP_BAD_REQUEST;
 }

 debug_dump_node(ctx, "OMA-DM getCertificate", getcert);

 name = xml_node_get_localname(ctx->xml, getcert);
 if (name == ((void*)0) || os_strcasecmp(name, "getCertificate") != 0) {
  wpa_printf(MSG_INFO, "Unexpected getCertificate node name '%s'",
      name);
  return DM_RESP_BAD_REQUEST;
 }

 res = osu_get_certificate(ctx, getcert);

 xml_node_free(ctx->xml, getcert);

 return res == 0 ? DM_RESP_OK : DM_RESP_COMMAND_FAILED;
}
