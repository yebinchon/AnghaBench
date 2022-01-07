
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int strlen (char const*) ;

uint32_t
ohash_interval(const char *s, const char **e)
{
 uint32_t k;

 if (!*e)
  *e = s + strlen(s);
 if (s == *e)
  k = 0;
 else
  k = *s++;
 while (s != *e)
  k = ((k << 2) | (k >> 30)) ^ *s++;
 return k;
}
