
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LINUX_AF_APPLETALK ;
 int LINUX_AF_AX25 ;
 int LINUX_AF_INET ;
 int LINUX_AF_INET6 ;
 int LINUX_AF_IPX ;
 int LINUX_AF_UNIX ;
 int LINUX_AF_UNSPEC ;

int
bsd_to_linux_domain(int domain)
{

 switch (domain) {
 case 128:
  return (LINUX_AF_UNSPEC);
 case 129:
  return (LINUX_AF_UNIX);
 case 132:
  return (LINUX_AF_INET);
 case 131:
  return (LINUX_AF_INET6);
 case 133:
  return (LINUX_AF_AX25);
 case 130:
  return (LINUX_AF_IPX);
 case 134:
  return (LINUX_AF_APPLETALK);
 }
 return (-1);
}
