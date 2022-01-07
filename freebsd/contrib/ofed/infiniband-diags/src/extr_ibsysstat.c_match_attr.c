
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IB_CPUINFO_ATTR ;
 int IB_HOSTINFO_ATTR ;
 int IB_PING_ATTR ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int match_attr(char *str)
{
 if (!strcmp(str, "ping"))
  return IB_PING_ATTR;
 if (!strcmp(str, "host"))
  return IB_HOSTINFO_ATTR;
 if (!strcmp(str, "cpu"))
  return IB_CPUINFO_ATTR;
 return -1;
}
