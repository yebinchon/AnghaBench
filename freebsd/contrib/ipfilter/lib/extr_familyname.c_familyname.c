
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int AF_INET6 ;

const char *familyname(int family)
{
 if (family == AF_INET)
  return "inet";




 return "unknown";
}
