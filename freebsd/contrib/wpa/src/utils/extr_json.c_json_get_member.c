
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_token {scalar_t__ type; scalar_t__ name; struct json_token* sibling; struct json_token* child; } ;


 scalar_t__ JSON_OBJECT ;
 scalar_t__ os_strcmp (scalar_t__,char const*) ;

struct json_token * json_get_member(struct json_token *json, const char *name)
{
 struct json_token *token, *ret = ((void*)0);

 if (!json || json->type != JSON_OBJECT)
  return ((void*)0);

 for (token = json->child; token; token = token->sibling) {
  if (token->name && os_strcmp(token->name, name) == 0)
   ret = token;
 }
 return ret;
}
