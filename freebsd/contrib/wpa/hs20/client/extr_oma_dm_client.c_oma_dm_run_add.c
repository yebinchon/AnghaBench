
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {char const* fqdn; int pps_updated; int xml; } ;


 int DM_RESP_ALREADY_EXISTS ;
 int DM_RESP_BAD_REQUEST ;
 int DM_RESP_COMMAND_FAILED ;
 int DM_RESP_OK ;
 int DM_RESP_PERMISSION_DENIED ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int debug_dump_node (struct hs20_osu_client*,char*,int *) ;
 int * get_node (int ,int *,char const*) ;
 int os_free (char*) ;
 char* os_strchr (char*,char) ;
 char* os_strdup (char const*) ;
 int os_strlcpy (char*,char const*,size_t) ;
 size_t os_strlen (char const*) ;
 scalar_t__ os_strncasecmp (char const*,char*,int) ;
 char* os_strrchr (char*,char) ;
 scalar_t__ os_strstr (char*,char*) ;
 int * tnds_to_mo (int ,int *) ;
 scalar_t__ update_pps_file (struct hs20_osu_client*,char const*,int *) ;
 int wpa_printf (int ,char*,...) ;
 int xml_node_add_child (int ,int *,int *) ;
 int * xml_node_create (int ,int *,int *,char*) ;
 int xml_node_free (int ,int *) ;
 int * xml_node_from_buf (int ,char*) ;
 char* xml_node_get_text (int ,int *) ;
 int xml_node_get_text_free (int ,char*) ;

__attribute__((used)) static int oma_dm_run_add(struct hs20_osu_client *ctx, const char *locuri,
     xml_node_t *add, xml_node_t *pps,
     const char *pps_fname)
{
 const char *pos;
 size_t fqdn_len;
 xml_node_t *node, *tnds, *unode, *pps_node;
 char *data, *uri, *upos, *end;
 int use_tnds = 0;
 size_t uri_len;

 wpa_printf(MSG_INFO, "Add command target LocURI: %s", locuri);

 if (os_strncasecmp(locuri, "./Wi-Fi/", 8) != 0) {
  wpa_printf(MSG_INFO, "Do not allow Add outside ./Wi-Fi");
  return DM_RESP_PERMISSION_DENIED;
 }
 pos = locuri + 8;

 if (ctx->fqdn == ((void*)0))
  return DM_RESP_COMMAND_FAILED;
 fqdn_len = os_strlen(ctx->fqdn);
 if (os_strncasecmp(pos, ctx->fqdn, fqdn_len) != 0 ||
     pos[fqdn_len] != '/') {
  wpa_printf(MSG_INFO, "Do not allow Add outside ./Wi-Fi/%s",
      ctx->fqdn);
  return DM_RESP_PERMISSION_DENIED;
 }
 pos += fqdn_len + 1;

 if (os_strncasecmp(pos, "PerProviderSubscription/", 24) != 0) {
  wpa_printf(MSG_INFO,
      "Do not allow Add outside ./Wi-Fi/%s/PerProviderSubscription",
      ctx->fqdn);
  return DM_RESP_PERMISSION_DENIED;
 }
 pos += 24;

 wpa_printf(MSG_INFO, "Add command for PPS node %s", pos);

 pps_node = get_node(ctx->xml, pps, pos);
 if (pps_node) {
  wpa_printf(MSG_INFO, "Specified PPS node exists already");
  return DM_RESP_ALREADY_EXISTS;
 }

 uri = os_strdup(pos);
 if (uri == ((void*)0))
  return DM_RESP_COMMAND_FAILED;
 while (!pps_node) {
  upos = os_strrchr(uri, '/');
  if (!upos)
   break;
  upos[0] = '\0';
  pps_node = get_node(ctx->xml, pps, uri);
  wpa_printf(MSG_INFO, "Node %s %s", uri,
      pps_node ? "exists" : "does not exist");
 }

 wpa_printf(MSG_INFO, "Parent URI: %s", uri);

 if (!pps_node) {

  pps_node = pps;
 }

 uri_len = os_strlen(uri);
 os_strlcpy(uri, pos + uri_len, os_strlen(pos));
 upos = uri;
 while (*upos == '/')
  upos++;
 wpa_printf(MSG_INFO, "Nodes to add: %s", upos);

 for (;;) {
  end = os_strchr(upos, '/');
  if (!end)
   break;
  *end = '\0';
  wpa_printf(MSG_INFO, "Adding interim node %s", upos);
  pps_node = xml_node_create(ctx->xml, pps_node, ((void*)0), upos);
  if (pps_node == ((void*)0)) {
   os_free(uri);
   return DM_RESP_COMMAND_FAILED;
  }
  upos = end + 1;
 }

 wpa_printf(MSG_INFO, "Adding node %s", upos);

 node = get_node(ctx->xml, add, "Item/Meta/Type");
 if (node) {
  char *type;
  type = xml_node_get_text(ctx->xml, node);
  if (type == ((void*)0)) {
   wpa_printf(MSG_ERROR, "Could not find type text");
   os_free(uri);
   return DM_RESP_BAD_REQUEST;
  }
  use_tnds = node &&
   os_strstr(type, "application/vnd.syncml.dmtnds+xml");
 }

 node = get_node(ctx->xml, add, "Item/Data");
 if (node == ((void*)0)) {
  wpa_printf(MSG_INFO, "No Add/Item/Data found");
  os_free(uri);
  return DM_RESP_BAD_REQUEST;
 }

 data = xml_node_get_text(ctx->xml, node);
 if (data == ((void*)0)) {
  wpa_printf(MSG_INFO, "Could not get Add/Item/Data text");
  os_free(uri);
  return DM_RESP_BAD_REQUEST;
 }

 wpa_printf(MSG_DEBUG, "Add/Item/Data: %s", data);

 if (use_tnds) {
  tnds = xml_node_from_buf(ctx->xml, data);
  xml_node_get_text_free(ctx->xml, data);
  if (tnds == ((void*)0)) {
   wpa_printf(MSG_INFO,
       "Could not parse Add/Item/Data text");
   os_free(uri);
   return DM_RESP_BAD_REQUEST;
  }

  unode = tnds_to_mo(ctx->xml, tnds);
  xml_node_free(ctx->xml, tnds);
  if (unode == ((void*)0)) {
   wpa_printf(MSG_INFO, "Could not parse TNDS text");
   os_free(uri);
   return DM_RESP_BAD_REQUEST;
  }

  debug_dump_node(ctx, "Parsed TNDS", unode);

  xml_node_add_child(ctx->xml, pps_node, unode);
 } else {

  os_free(uri);
  return DM_RESP_BAD_REQUEST;
 }

 os_free(uri);

 if (update_pps_file(ctx, pps_fname, pps) < 0)
  return DM_RESP_COMMAND_FAILED;

 ctx->pps_updated = 1;

 return DM_RESP_OK;
}
