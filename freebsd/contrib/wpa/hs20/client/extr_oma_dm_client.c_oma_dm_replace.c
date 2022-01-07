
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {char* fqdn; int pps_updated; int xml; } ;


 int DM_RESP_BAD_REQUEST ;
 int DM_RESP_COMMAND_FAILED ;
 int DM_RESP_NOT_FOUND ;
 int DM_RESP_OK ;
 int DM_RESP_PERMISSION_DENIED ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int debug_dump_node (struct hs20_osu_client*,char*,int *) ;
 int * get_node (int ,int *,char*) ;
 char* oma_dm_get_target_locuri (struct hs20_osu_client*,int *) ;
 int os_free (char*) ;
 size_t os_strlen (char*) ;
 scalar_t__ os_strncasecmp (char*,char*,int) ;
 scalar_t__ os_strstr (char*,char*) ;
 int * tnds_to_mo (int ,int *) ;
 scalar_t__ update_pps_file (struct hs20_osu_client*,char const*,int *) ;
 int wpa_printf (int ,char*,...) ;
 int xml_node_add_child (int ,int *,int *) ;
 int xml_node_detach (int ,int *) ;
 int xml_node_free (int ,int *) ;
 int * xml_node_from_buf (int ,char*) ;
 int * xml_node_get_parent (int ,int *) ;
 char* xml_node_get_text (int ,int *) ;
 int xml_node_get_text_free (int ,char*) ;
 int xml_node_set_text (int ,int *,char*) ;

__attribute__((used)) static int oma_dm_replace(struct hs20_osu_client *ctx, xml_node_t *replace,
     xml_node_t *pps, const char *pps_fname)
{
 char *locuri, *pos;
 size_t fqdn_len;
 xml_node_t *node, *tnds, *unode, *pps_node, *parent;
 char *data;
 int use_tnds = 0;

 locuri = oma_dm_get_target_locuri(ctx, replace);
 if (locuri == ((void*)0))
  return DM_RESP_BAD_REQUEST;

 wpa_printf(MSG_INFO, "Replace command target LocURI: %s", locuri);
 if (os_strncasecmp(locuri, "./Wi-Fi/", 8) != 0) {
  wpa_printf(MSG_INFO, "Do not allow Replace outside ./Wi-Fi");
  os_free(locuri);
  return DM_RESP_PERMISSION_DENIED;
 }
 pos = locuri + 8;

 if (ctx->fqdn == ((void*)0)) {
  os_free(locuri);
  return DM_RESP_COMMAND_FAILED;
 }
 fqdn_len = os_strlen(ctx->fqdn);
 if (os_strncasecmp(pos, ctx->fqdn, fqdn_len) != 0 ||
     pos[fqdn_len] != '/') {
  wpa_printf(MSG_INFO, "Do not allow Replace outside ./Wi-Fi/%s",
      ctx->fqdn);
  os_free(locuri);
  return DM_RESP_PERMISSION_DENIED;
 }
 pos += fqdn_len + 1;

 if (os_strncasecmp(pos, "PerProviderSubscription/", 24) != 0) {
  wpa_printf(MSG_INFO,
      "Do not allow Replace outside ./Wi-Fi/%s/PerProviderSubscription",
      ctx->fqdn);
  os_free(locuri);
  return DM_RESP_PERMISSION_DENIED;
 }
 pos += 24;

 wpa_printf(MSG_INFO, "Replace command for PPS node %s", pos);

 pps_node = get_node(ctx->xml, pps, pos);
 if (pps_node == ((void*)0)) {
  wpa_printf(MSG_INFO, "Specified PPS node not found");
  os_free(locuri);
  return DM_RESP_NOT_FOUND;
 }

 node = get_node(ctx->xml, replace, "Item/Meta/Type");
 if (node) {
  char *type;
  type = xml_node_get_text(ctx->xml, node);
  if (type == ((void*)0)) {
   wpa_printf(MSG_INFO, "Could not find type text");
   os_free(locuri);
   return DM_RESP_BAD_REQUEST;
  }
  use_tnds = node &&
   os_strstr(type, "application/vnd.syncml.dmtnds+xml");
 }

 node = get_node(ctx->xml, replace, "Item/Data");
 if (node == ((void*)0)) {
  wpa_printf(MSG_INFO, "No Replace/Item/Data found");
  os_free(locuri);
  return DM_RESP_BAD_REQUEST;
 }

 data = xml_node_get_text(ctx->xml, node);
 if (data == ((void*)0)) {
  wpa_printf(MSG_INFO, "Could not get Replace/Item/Data text");
  os_free(locuri);
  return DM_RESP_BAD_REQUEST;
 }

 wpa_printf(MSG_DEBUG, "Replace/Item/Data: %s", data);

 if (use_tnds) {
  tnds = xml_node_from_buf(ctx->xml, data);
  xml_node_get_text_free(ctx->xml, data);
  if (tnds == ((void*)0)) {
   wpa_printf(MSG_INFO,
       "Could not parse Replace/Item/Data text");
   os_free(locuri);
   return DM_RESP_BAD_REQUEST;
  }

  unode = tnds_to_mo(ctx->xml, tnds);
  xml_node_free(ctx->xml, tnds);
  if (unode == ((void*)0)) {
   wpa_printf(MSG_INFO, "Could not parse TNDS text");
   os_free(locuri);
   return DM_RESP_BAD_REQUEST;
  }

  debug_dump_node(ctx, "Parsed TNDS", unode);

  parent = xml_node_get_parent(ctx->xml, pps_node);
  xml_node_detach(ctx->xml, pps_node);
  xml_node_add_child(ctx->xml, parent, unode);
 } else {
  xml_node_set_text(ctx->xml, pps_node, data);
  xml_node_get_text_free(ctx->xml, data);
 }

 os_free(locuri);

 if (update_pps_file(ctx, pps_fname, pps) < 0)
  return DM_RESP_COMMAND_FAILED;

 ctx->pps_updated = 1;

 return DM_RESP_OK;
}
