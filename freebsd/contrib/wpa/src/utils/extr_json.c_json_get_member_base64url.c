
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct json_token {scalar_t__ type; scalar_t__ string; } ;


 scalar_t__ JSON_STRING ;
 unsigned char* base64_url_decode (unsigned char const*,int ,size_t*) ;
 struct json_token* json_get_member (struct json_token*,char const*) ;
 int os_free (unsigned char*) ;
 int os_strlen (scalar_t__) ;
 struct wpabuf* wpabuf_alloc_ext_data (unsigned char*,size_t) ;

struct wpabuf * json_get_member_base64url(struct json_token *json,
       const char *name)
{
 struct json_token *token;
 unsigned char *buf;
 size_t buflen;
 struct wpabuf *ret;

 token = json_get_member(json, name);
 if (!token || token->type != JSON_STRING)
  return ((void*)0);
 buf = base64_url_decode((const unsigned char *) token->string,
    os_strlen(token->string), &buflen);
 if (!buf)
  return ((void*)0);
 ret = wpabuf_alloc_ext_data(buf, buflen);
 if (!ret)
  os_free(buf);

 return ret;
}
