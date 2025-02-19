
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EVUTIL_ISXDIGIT_ (char const) ;
 scalar_t__ strtol (char*,int *,int) ;

int
evhttp_decode_uri_internal(
 const char *uri, size_t length, char *ret, int decode_plus_ctl)
{
 char c;
 int j;
 int decode_plus = (decode_plus_ctl == 1) ? 1: 0;
 unsigned i;

 for (i = j = 0; i < length; i++) {
  c = uri[i];
  if (c == '?') {
   if (decode_plus_ctl < 0)
    decode_plus = 1;
  } else if (c == '+' && decode_plus) {
   c = ' ';
  } else if ((i + 2) < length && c == '%' &&
   EVUTIL_ISXDIGIT_(uri[i+1]) && EVUTIL_ISXDIGIT_(uri[i+2])) {
   char tmp[3];
   tmp[0] = uri[i+1];
   tmp[1] = uri[i+2];
   tmp[2] = '\0';
   c = (char)strtol(tmp, ((void*)0), 16);
   i += 2;
  }
  ret[j++] = c;
 }
 ret[j] = '\0';

 return (j);
}
