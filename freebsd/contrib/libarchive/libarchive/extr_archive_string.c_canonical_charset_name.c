
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static const char *
canonical_charset_name(const char *charset)
{
 char cs[16];
 char *p;
 const char *s;

 if (charset == ((void*)0) || charset[0] == '\0'
     || strlen(charset) > 15)
  return (charset);


 p = cs;
 s = charset;
 while (*s) {
  char c = *s++;
  if (c >= 'a' && c <= 'z')
   c -= 'a' - 'A';
  *p++ = c;
 }
 *p++ = '\0';

 if (strcmp(cs, "UTF-8") == 0 ||
     strcmp(cs, "UTF8") == 0)
  return ("UTF-8");
 if (strcmp(cs, "UTF-16BE") == 0 ||
     strcmp(cs, "UTF16BE") == 0)
  return ("UTF-16BE");
 if (strcmp(cs, "UTF-16LE") == 0 ||
     strcmp(cs, "UTF16LE") == 0)
  return ("UTF-16LE");
 if (strcmp(cs, "CP932") == 0)
  return ("CP932");
 return (charset);
}
