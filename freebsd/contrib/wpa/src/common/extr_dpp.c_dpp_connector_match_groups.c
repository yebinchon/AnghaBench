
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_token {scalar_t__ type; int string; struct json_token* sibling; struct json_token* child; } ;


 scalar_t__ JSON_ARRAY ;
 scalar_t__ JSON_STRING ;
 int MSG_DEBUG ;
 scalar_t__ dpp_connector_compatible_group (struct json_token*,int ,int ) ;
 struct json_token* json_get_member (struct json_token*,char*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int dpp_connector_match_groups(struct json_token *own_root,
          struct json_token *peer_root)
{
 struct json_token *groups, *token;

 groups = json_get_member(peer_root, "groups");
 if (!groups || groups->type != JSON_ARRAY) {
  wpa_printf(MSG_DEBUG, "DPP: No peer groups array found");
  return 0;
 }

 for (token = groups->child; token; token = token->sibling) {
  struct json_token *id, *role;

  id = json_get_member(token, "groupId");
  if (!id || id->type != JSON_STRING) {
   wpa_printf(MSG_DEBUG,
       "DPP: Missing peer groupId string");
   continue;
  }

  role = json_get_member(token, "netRole");
  if (!role || role->type != JSON_STRING) {
   wpa_printf(MSG_DEBUG,
       "DPP: Missing peer groups::netRole string");
   continue;
  }
  wpa_printf(MSG_DEBUG,
      "DPP: peer connector group: groupId='%s' netRole='%s'",
      id->string, role->string);
  if (dpp_connector_compatible_group(own_root, id->string,
         role->string)) {
   wpa_printf(MSG_DEBUG,
       "DPP: Compatible group/netRole in own connector");
   return 1;
  }
 }

 return 0;
}
