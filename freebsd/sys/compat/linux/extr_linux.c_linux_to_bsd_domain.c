
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_APPLETALK ;
 int AF_CCITT ;
 int AF_INET ;
 int AF_INET6 ;
 int AF_IPX ;
 int AF_LOCAL ;
 int AF_UNSPEC ;
int
linux_to_bsd_domain(int domain)
{

 switch (domain) {
 case 128:
  return (AF_UNSPEC);
 case 129:
  return (AF_LOCAL);
 case 132:
  return (AF_INET);
 case 131:
  return (AF_INET6);
 case 133:
  return (AF_CCITT);
 case 130:
  return (AF_IPX);
 case 134:
  return (AF_APPLETALK);
 }
 return (-1);
}
