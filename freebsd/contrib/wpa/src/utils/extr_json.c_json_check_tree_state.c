
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_token {scalar_t__ state; char* name; int type; struct json_token* sibling; struct json_token* child; } ;


 scalar_t__ JSON_COMPLETED ;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*,scalar_t__,char*,int ) ;

__attribute__((used)) static int json_check_tree_state(struct json_token *token)
{
 if (!token)
  return 0;
 if (json_check_tree_state(token->child) < 0 ||
     json_check_tree_state(token->sibling) < 0)
  return -1;
 if (token->state != JSON_COMPLETED) {
  wpa_printf(MSG_DEBUG,
      "JSON: Unexpected token state %d (name=%s type=%d)",
      token->state, token->name ? token->name : "N/A",
      token->type);
  return -1;
 }
 return 0;
}
