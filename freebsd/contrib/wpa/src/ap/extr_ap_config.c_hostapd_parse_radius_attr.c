
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_radius_attr {void* val; int type; } ;


 int atoi (char const*) ;
 int hexstr2bin (char const*,int ,size_t) ;
 int os_free (struct hostapd_radius_attr*) ;
 char* os_strchr (char const*,char) ;
 size_t os_strlen (char const*) ;
 struct hostapd_radius_attr* os_zalloc (int) ;
 void* wpabuf_alloc (int) ;
 void* wpabuf_alloc_copy (char const*,size_t) ;
 int wpabuf_free (void*) ;
 int wpabuf_put (void*,size_t) ;
 int wpabuf_put_be32 (void*,int ) ;
 int wpabuf_put_u8 (void*,int ) ;

struct hostapd_radius_attr * hostapd_parse_radius_attr(const char *value)
{
 const char *pos;
 char syntax;
 struct hostapd_radius_attr *attr;
 size_t len;

 attr = os_zalloc(sizeof(*attr));
 if (!attr)
  return ((void*)0);

 attr->type = atoi(value);

 pos = os_strchr(value, ':');
 if (!pos) {
  attr->val = wpabuf_alloc(1);
  if (!attr->val) {
   os_free(attr);
   return ((void*)0);
  }
  wpabuf_put_u8(attr->val, 0);
  return attr;
 }

 pos++;
 if (pos[0] == '\0' || pos[1] != ':') {
  os_free(attr);
  return ((void*)0);
 }
 syntax = *pos++;
 pos++;

 switch (syntax) {
 case 's':
  attr->val = wpabuf_alloc_copy(pos, os_strlen(pos));
  break;
 case 'x':
  len = os_strlen(pos);
  if (len & 1)
   break;
  len /= 2;
  attr->val = wpabuf_alloc(len);
  if (!attr->val)
   break;
  if (hexstr2bin(pos, wpabuf_put(attr->val, len), len) < 0) {
   wpabuf_free(attr->val);
   os_free(attr);
   return ((void*)0);
  }
  break;
 case 'd':
  attr->val = wpabuf_alloc(4);
  if (attr->val)
   wpabuf_put_be32(attr->val, atoi(pos));
  break;
 default:
  os_free(attr);
  return ((void*)0);
 }

 if (!attr->val) {
  os_free(attr);
  return ((void*)0);
 }

 return attr;
}
