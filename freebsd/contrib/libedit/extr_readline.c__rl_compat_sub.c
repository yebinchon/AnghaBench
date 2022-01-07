
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* el_calloc (size_t,int) ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;
 int strncmp (char const*,char const*,size_t) ;
 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static char *
_rl_compat_sub(const char *str, const char *what, const char *with,
    int globally)
{
 const char *s;
 char *r, *result;
 size_t len, with_len, what_len;

 len = strlen(str);
 with_len = strlen(with);
 what_len = strlen(what);


 s = str;
 while (*s) {
  if (*s == *what && !strncmp(s, what, what_len)) {
   len += with_len - what_len;
   if (!globally)
    break;
   s += what_len;
  } else
   s++;
 }
 r = result = el_calloc(len + 1, sizeof(*r));
 if (result == ((void*)0))
  return ((void*)0);
 s = str;
 while (*s) {
  if (*s == *what && !strncmp(s, what, what_len)) {
   (void)strncpy(r, with, with_len);
   r += with_len;
   s += what_len;
   if (!globally) {
    (void)strcpy(r, s);
    return result;
   }
  } else
   *r++ = *s++;
 }
 *r = '\0';
 return result;
}
