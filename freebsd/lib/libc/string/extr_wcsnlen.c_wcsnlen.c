
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



size_t
wcsnlen(const wchar_t *s, size_t maxlen)
{
 size_t len;

 for (len = 0; len < maxlen; len++, s++) {
  if (!*s)
   break;
 }
 return (len);
}
