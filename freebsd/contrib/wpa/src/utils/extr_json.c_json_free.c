
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_token {struct json_token* string; struct json_token* name; struct json_token* sibling; struct json_token* child; } ;


 int os_free (struct json_token*) ;

void json_free(struct json_token *json)
{
 if (!json)
  return;
 json_free(json->child);
 json_free(json->sibling);
 os_free(json->name);
 os_free(json->string);
 os_free(json);
}
