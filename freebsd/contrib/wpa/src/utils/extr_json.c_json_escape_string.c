
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_snprintf (char*,int,char*,char const) ;

void json_escape_string(char *txt, size_t maxlen, const char *data, size_t len)
{
 char *end = txt + maxlen;
 size_t i;

 for (i = 0; i < len; i++) {
  if (txt + 4 >= end)
   break;

  switch (data[i]) {
  case '\"':
   *txt++ = '\\';
   *txt++ = '\"';
   break;
  case '\\':
   *txt++ = '\\';
   *txt++ = '\\';
   break;
  case '\n':
   *txt++ = '\\';
   *txt++ = 'n';
   break;
  case '\r':
   *txt++ = '\\';
   *txt++ = 'r';
   break;
  case '\t':
   *txt++ = '\\';
   *txt++ = 't';
   break;
  default:
   if (data[i] >= 32 && data[i] <= 126) {
    *txt++ = data[i];
   } else {
    txt += os_snprintf(txt, end - txt, "\\u%04x",
         data[i]);
   }
   break;
  }
 }

 *txt = '\0';
}
