
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t os_strlen(const char *s)
{
 const char *p = s;
 while (*p)
  p++;
 return p - s;
}
