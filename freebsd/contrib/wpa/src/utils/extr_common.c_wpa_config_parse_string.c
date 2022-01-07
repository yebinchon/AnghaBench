
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;


 char* dup_binstr (char const*,size_t) ;
 scalar_t__ hexstr2bin (char const*,char*,size_t) ;
 int os_free (char*) ;
 char* os_malloc (size_t) ;
 size_t os_strlen (char const*) ;
 char* os_strrchr (char const*,char) ;
 size_t printf_decode (char*,size_t,char*) ;

char * wpa_config_parse_string(const char *value, size_t *len)
{
 if (*value == '"') {
  const char *pos;
  char *str;
  value++;
  pos = os_strrchr(value, '"');
  if (pos == ((void*)0) || pos[1] != '\0')
   return ((void*)0);
  *len = pos - value;
  str = dup_binstr(value, *len);
  if (str == ((void*)0))
   return ((void*)0);
  return str;
 } else if (*value == 'P' && value[1] == '"') {
  const char *pos;
  char *tstr, *str;
  size_t tlen;
  value += 2;
  pos = os_strrchr(value, '"');
  if (pos == ((void*)0) || pos[1] != '\0')
   return ((void*)0);
  tlen = pos - value;
  tstr = dup_binstr(value, tlen);
  if (tstr == ((void*)0))
   return ((void*)0);

  str = os_malloc(tlen + 1);
  if (str == ((void*)0)) {
   os_free(tstr);
   return ((void*)0);
  }

  *len = printf_decode((u8 *) str, tlen + 1, tstr);
  os_free(tstr);

  return str;
 } else {
  u8 *str;
  size_t tlen, hlen = os_strlen(value);
  if (hlen & 1)
   return ((void*)0);
  tlen = hlen / 2;
  str = os_malloc(tlen + 1);
  if (str == ((void*)0))
   return ((void*)0);
  if (hexstr2bin(value, str, tlen)) {
   os_free(str);
   return ((void*)0);
  }
  str[tlen] = '\0';
  *len = tlen;
  return (char *) str;
 }
}
