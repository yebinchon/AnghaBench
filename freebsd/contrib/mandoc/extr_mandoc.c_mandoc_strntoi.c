
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long INT_MAX ;
 long INT_MIN ;
 scalar_t__ errno ;
 int memcpy (char*,char const*,size_t) ;
 long strtol (char*,char**,int) ;

int
mandoc_strntoi(const char *p, size_t sz, int base)
{
 char buf[32];
 char *ep;
 long v;

 if (sz > 31)
  return -1;

 memcpy(buf, p, sz);
 buf[(int)sz] = '\0';

 errno = 0;
 v = strtol(buf, &ep, base);

 if (buf[0] == '\0' || *ep != '\0')
  return -1;

 if (v > INT_MAX)
  v = INT_MAX;
 if (v < INT_MIN)
  v = INT_MIN;

 return (int)v;
}
