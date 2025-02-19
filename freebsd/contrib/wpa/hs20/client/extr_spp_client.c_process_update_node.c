
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {char* fqdn; int xml; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int debug_dump_node (struct hs20_osu_client*,char*,int *) ;
 int free (char*) ;
 int * get_node (int ,int *,char*) ;
 int * get_node_uri (int ,int *,char const*) ;
 char* get_spp_attr_value (int ,int *,char*) ;
 size_t os_strlen (char*) ;
 scalar_t__ os_strncasecmp (char*,char*,int) ;
 void* os_strrchr (char*,char) ;
 char* strdup (char*) ;
 char* strstr (char*,char*) ;
 int * tnds_to_mo (int ,int *) ;
 int wpa_printf (int ,char*,...) ;
 int xml_node_add_child (int ,int *,int *) ;
 int xml_node_detach (int ,int *) ;
 int xml_node_free (int ,int *) ;
 int * xml_node_from_buf (int ,char*) ;
 int xml_node_get_attr_value_free (int ,char*) ;
 int * xml_node_get_parent (int ,int *) ;
 char* xml_node_get_text (int ,int *) ;
 int xml_node_get_text_free (int ,char*) ;

__attribute__((used)) static int process_update_node(struct hs20_osu_client *ctx, xml_node_t *pps,
          xml_node_t *update)
{
 xml_node_t *node, *parent, *tnds, *unode;
 char *str;
 const char *name;
 char *uri, *pos;
 char *cdata, *cdata_end;
 size_t fqdn_len;

 wpa_printf(MSG_INFO, "Processing updateNode");
 debug_dump_node(ctx, "updateNode", update);

 uri = get_spp_attr_value(ctx->xml, update, "managementTreeURI");
 if (uri == ((void*)0)) {
  wpa_printf(MSG_INFO, "No managementTreeURI present");
  return -1;
 }
 wpa_printf(MSG_INFO, "managementTreeUri: '%s'", uri);

 name = os_strrchr(uri, '/');
 if (name == ((void*)0)) {
  wpa_printf(MSG_INFO, "Unexpected URI");
  xml_node_get_attr_value_free(ctx->xml, uri);
  return -1;
 }
 name++;
 wpa_printf(MSG_INFO, "Update interior node: '%s'", name);

 str = xml_node_get_text(ctx->xml, update);
 if (str == ((void*)0)) {
  wpa_printf(MSG_INFO, "Could not extract MO text");
  xml_node_get_attr_value_free(ctx->xml, uri);
  return -1;
 }
 wpa_printf(MSG_DEBUG, "[hs20] nodeContainer text: '%s'", str);
 cdata = strstr(str, "<![CDATA[");
 cdata_end = strstr(str, "]]>");
 if (cdata && cdata_end && cdata_end > cdata &&
     cdata < strstr(str, "MgmtTree") &&
     cdata_end > strstr(str, "/MgmtTree")) {
  char *tmp;
  wpa_printf(MSG_DEBUG, "[hs20] Removing extra CDATA container");
  tmp = strdup(cdata + 9);
  if (tmp) {
   cdata_end = strstr(tmp, "]]>");
   if (cdata_end)
    *cdata_end = '\0';
   wpa_printf(MSG_DEBUG, "[hs20] nodeContainer text with CDATA container removed: '%s'",
       tmp);
   tnds = xml_node_from_buf(ctx->xml, tmp);
   free(tmp);
  } else
   tnds = ((void*)0);
 } else
  tnds = xml_node_from_buf(ctx->xml, str);
 xml_node_get_text_free(ctx->xml, str);
 if (tnds == ((void*)0)) {
  wpa_printf(MSG_INFO, "[hs20] Could not parse nodeContainer text");
  xml_node_get_attr_value_free(ctx->xml, uri);
  return -1;
 }

 unode = tnds_to_mo(ctx->xml, tnds);
 xml_node_free(ctx->xml, tnds);
 if (unode == ((void*)0)) {
  wpa_printf(MSG_INFO, "[hs20] Could not parse nodeContainer TNDS text");
  xml_node_get_attr_value_free(ctx->xml, uri);
  return -1;
 }

 debug_dump_node(ctx, "Parsed TNDS", unode);

 if (get_node_uri(ctx->xml, unode, name) == ((void*)0)) {
  wpa_printf(MSG_INFO, "[hs20] %s node not found", name);
  xml_node_free(ctx->xml, unode);
  xml_node_get_attr_value_free(ctx->xml, uri);
  return -1;
 }

 if (os_strncasecmp(uri, "./Wi-Fi/", 8) != 0) {
  wpa_printf(MSG_INFO, "Do not allow update outside ./Wi-Fi");
  xml_node_free(ctx->xml, unode);
  xml_node_get_attr_value_free(ctx->xml, uri);
  return -1;
 }
 pos = uri + 8;

 if (ctx->fqdn == ((void*)0)) {
  wpa_printf(MSG_INFO, "FQDN not known");
  xml_node_free(ctx->xml, unode);
  xml_node_get_attr_value_free(ctx->xml, uri);
  return -1;
 }
 fqdn_len = os_strlen(ctx->fqdn);
 if (os_strncasecmp(pos, ctx->fqdn, fqdn_len) != 0 ||
     pos[fqdn_len] != '/') {
  wpa_printf(MSG_INFO, "Do not allow update outside ./Wi-Fi/%s",
      ctx->fqdn);
  xml_node_free(ctx->xml, unode);
  xml_node_get_attr_value_free(ctx->xml, uri);
  return -1;
 }
 pos += fqdn_len + 1;

 if (os_strncasecmp(pos, "PerProviderSubscription/", 24) != 0) {
  wpa_printf(MSG_INFO, "Do not allow update outside ./Wi-Fi/%s/PerProviderSubscription",
      ctx->fqdn);
  xml_node_free(ctx->xml, unode);
  xml_node_get_attr_value_free(ctx->xml, uri);
  return -1;
 }
 pos += 24;

 wpa_printf(MSG_INFO, "Update command for PPS node %s", pos);

 node = get_node(ctx->xml, pps, pos);
 if (node) {
  parent = xml_node_get_parent(ctx->xml, node);
  xml_node_detach(ctx->xml, node);
  wpa_printf(MSG_INFO, "Replace '%s' node", name);
 } else {
  char *pos2;
  pos2 = os_strrchr(pos, '/');
  if (pos2 == ((void*)0)) {
   parent = pps;
  } else {
   *pos2 = '\0';
   parent = get_node(ctx->xml, pps, pos);
  }
  if (parent == ((void*)0)) {
   wpa_printf(MSG_INFO, "Could not find parent %s", pos);
   xml_node_free(ctx->xml, unode);
   xml_node_get_attr_value_free(ctx->xml, uri);
   return -1;
  }
  wpa_printf(MSG_INFO, "Add '%s' node", name);
 }
 xml_node_add_child(ctx->xml, parent, unode);

 xml_node_get_attr_value_free(ctx->xml, uri);

 return 0;
}
