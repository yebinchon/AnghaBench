
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int hexchar (char const*) ;
 int isxdigit (unsigned char) ;
 scalar_t__ strlen (char const*) ;
 char* xmalloc (scalar_t__) ;

__attribute__((used)) static char *
urldecode(const char *src)
{
 char *ret, *dst;
 int ch;

 ret = xmalloc(strlen(src) + 1);
 for (dst = ret; *src != '\0'; src++) {
  switch (*src) {
  case '+':
   *dst++ = ' ';
   break;
  case '%':
   if (!isxdigit((unsigned char)src[1]) ||
       !isxdigit((unsigned char)src[2]) ||
       (ch = hexchar(src + 1)) == -1) {
    free(ret);
    return ((void*)0);
   }
   *dst++ = ch;
   src += 2;
   break;
  default:
   *dst++ = *src;
   break;
  }
 }
 *dst = '\0';

 return ret;
}
