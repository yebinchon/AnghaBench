
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
 int * get_node (int ,int *,char*) ;
 int hs20_web_browser (char*) ;
 int wpa_printf (int ,char*,...) ;
 int write_summary (struct hs20_osu_client*,char*,...) ;
 char* xml_node_get_text (int ,int *) ;
 int xml_node_get_text_free (int ,char*) ;

__attribute__((used)) static int oma_dm_exec_browser(struct hs20_osu_client *ctx, xml_node_t *exec)
{
 xml_node_t *node;
 char *data;
 int res;

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
 wpa_printf(MSG_INFO, "Launch browser to URI '%s'", data);
 write_summary(ctx, "Launch browser to URI '%s'", data);
 res = hs20_web_browser(data);
 xml_node_get_text_free(ctx->xml, data);
 if (res > 0) {
  wpa_printf(MSG_INFO, "User response in browser completed successfully");
  write_summary(ctx, "User response in browser completed successfully");
  return DM_RESP_OK;
 } else {
  wpa_printf(MSG_INFO, "Failed to receive user response");
  write_summary(ctx, "Failed to receive user response");
  return DM_RESP_COMMAND_FAILED;
 }
}
