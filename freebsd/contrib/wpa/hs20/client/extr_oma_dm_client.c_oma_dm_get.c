
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {char* fqdn; int xml; } ;


 int DM_RESP_BAD_REQUEST ;
 int DM_RESP_COMMAND_FAILED ;
 int DM_RESP_NOT_FOUND ;
 int DM_RESP_OK ;
 int DM_RESP_PERMISSION_DENIED ;
 int MSG_INFO ;
 int * get_node (int ,int *,char*) ;
 char* oma_dm_get_target_locuri (struct hs20_osu_client*,int *) ;
 int os_free (char*) ;
 scalar_t__ os_strcasecmp (char const*,char*) ;
 size_t os_strlen (char*) ;
 scalar_t__ os_strncasecmp (char*,char*,int) ;
 int wpa_printf (int ,char*,...) ;
 char* xml_node_get_localname (int ,int *) ;
 char* xml_node_get_text (int ,int *) ;

__attribute__((used)) static int oma_dm_get(struct hs20_osu_client *ctx, xml_node_t *get,
        xml_node_t *pps, const char *pps_fname, char **value)
{
 char *locuri, *pos;
 size_t fqdn_len;
 xml_node_t *pps_node;
 const char *name;

 *value = ((void*)0);

 locuri = oma_dm_get_target_locuri(ctx, get);
 if (locuri == ((void*)0))
  return DM_RESP_BAD_REQUEST;

 wpa_printf(MSG_INFO, "Get command target LocURI: %s", locuri);
 if (os_strncasecmp(locuri, "./Wi-Fi/", 8) != 0) {
  wpa_printf(MSG_INFO, "Do not allow Get outside ./Wi-Fi");
  os_free(locuri);
  return DM_RESP_PERMISSION_DENIED;
 }
 pos = locuri + 8;

 if (ctx->fqdn == ((void*)0))
  return DM_RESP_COMMAND_FAILED;
 fqdn_len = os_strlen(ctx->fqdn);
 if (os_strncasecmp(pos, ctx->fqdn, fqdn_len) != 0 ||
     pos[fqdn_len] != '/') {
  wpa_printf(MSG_INFO, "Do not allow Get outside ./Wi-Fi/%s",
      ctx->fqdn);
  os_free(locuri);
  return DM_RESP_PERMISSION_DENIED;
 }
 pos += fqdn_len + 1;

 if (os_strncasecmp(pos, "PerProviderSubscription/", 24) != 0) {
  wpa_printf(MSG_INFO,
      "Do not allow Get outside ./Wi-Fi/%s/PerProviderSubscription",
      ctx->fqdn);
  os_free(locuri);
  return DM_RESP_PERMISSION_DENIED;
 }
 pos += 24;

 wpa_printf(MSG_INFO, "Get command for PPS node %s", pos);

 pps_node = get_node(ctx->xml, pps, pos);
 if (pps_node == ((void*)0)) {
  wpa_printf(MSG_INFO, "Specified PPS node not found");
  os_free(locuri);
  return DM_RESP_NOT_FOUND;
 }

 name = xml_node_get_localname(ctx->xml, pps_node);
 wpa_printf(MSG_INFO, "Get command returned node with name '%s'", name);
 if (os_strcasecmp(name, "Password") == 0) {
  wpa_printf(MSG_INFO, "Do not allow Get for Password node");
  os_free(locuri);
  return DM_RESP_PERMISSION_DENIED;
 }







 *value = xml_node_get_text(ctx->xml, pps_node);
 if (*value == ((void*)0))
  return DM_RESP_COMMAND_FAILED;

 return DM_RESP_OK;
}
