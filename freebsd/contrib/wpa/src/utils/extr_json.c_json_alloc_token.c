
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_token {int dummy; } ;


 unsigned int JSON_MAX_TOKENS ;
 int MSG_DEBUG ;
 struct json_token* os_zalloc (int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static struct json_token * json_alloc_token(unsigned int *tokens)
{
 (*tokens)++;
 if (*tokens > JSON_MAX_TOKENS) {
  wpa_printf(MSG_DEBUG, "JSON: Maximum token limit exceeded");
  return ((void*)0);
 }
 return os_zalloc(sizeof(struct json_token));
}
