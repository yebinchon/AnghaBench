
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
_add(const char *str, char *pt, const char * const ptlim)
{
 while (pt < ptlim && (*pt = *str++) != '\0')
  ++pt;
 return (pt);
}
