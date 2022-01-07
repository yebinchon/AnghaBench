
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
typedef int buf ;


 int sprintf (char*,char*,char) ;

__attribute__((used)) static char *
qstring(u_char *s, int len)
{
 static char buf[8*20+1];
 char *p;
 u_char *s2, c;


 for (p = buf; len != 0 && p < &buf[sizeof(buf)-1]; len--) {
  c = *s++;
  if (c == '\0') {
   for (s2 = s+1; s2 < &s[len]; s2++) {
    if (*s2 != '\0')
     break;
   }
   if (s2 >= &s[len])
       goto exit;
  }

  if (c >= ' ' && c < 0x7f && c != '\\') {
   *p++ = c;
   continue;
  }
  *p++ = '\\';
  switch (c) {
  case '\\':
   *p++ = '\\';
   break;
  case '\n':
   *p++= 'n';
   break;
  case '\r':
   *p++= 'r';
   break;
  case '\t':
   *p++ = 't';
   break;
  case '\b':
   *p++ = 'b';
   break;
  default:
   p += sprintf(p,"%o",c);
   break;
  }
 }
exit:
 *p = '\0';
 return buf;
}
