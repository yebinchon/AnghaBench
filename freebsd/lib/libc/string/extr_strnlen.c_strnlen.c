
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t
strnlen(const char *s, size_t maxlen)
{
 size_t len;

 for (len = 0; len < maxlen; len++, s++) {
  if (!*s)
   break;
 }
 return (len);
}
