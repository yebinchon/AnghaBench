
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tolower (int ) ;

char *
nls_str_lower(char *dst, const char *src)
{
 char *p = dst;

 while (*src)
  *dst++ = tolower(*src++);
 *dst = 0;
 return p;
}
