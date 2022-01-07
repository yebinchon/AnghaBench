
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
quoted_strcpy(char *dst, const char *src)
{
 char q = ' ';

 if (*src == '\'' || *src == '"')
  q = *src++;
 while (*src && *src != q)
  *dst++ = *src++;
 *dst++ = '\0';

}
