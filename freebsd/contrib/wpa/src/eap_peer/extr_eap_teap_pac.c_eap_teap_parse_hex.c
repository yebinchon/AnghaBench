
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ hexstr2bin (char const*,int *,size_t) ;
 int os_free (int *) ;
 int * os_malloc (size_t) ;
 int os_strlen (char const*) ;

__attribute__((used)) static u8 * eap_teap_parse_hex(const char *value, size_t *len)
{
 int hlen;
 u8 *buf;

 if (!value)
  return ((void*)0);
 hlen = os_strlen(value);
 if (hlen & 1)
  return ((void*)0);
 *len = hlen / 2;
 buf = os_malloc(*len);
 if (!buf)
  return ((void*)0);
 if (hexstr2bin(value, buf, *len)) {
  os_free(buf);
  return ((void*)0);
 }
 return buf;
}
