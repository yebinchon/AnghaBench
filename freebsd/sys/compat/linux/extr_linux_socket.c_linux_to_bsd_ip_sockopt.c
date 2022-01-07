
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IP_ADD_MEMBERSHIP ;
 int IP_DROP_MEMBERSHIP ;
 int IP_HDRINCL ;
 int IP_MULTICAST_IF ;
 int IP_MULTICAST_LOOP ;
 int IP_MULTICAST_TTL ;
 int IP_OPTIONS ;
 int IP_TOS ;
 int IP_TTL ;
__attribute__((used)) static int
linux_to_bsd_ip_sockopt(int opt)
{

 switch (opt) {
 case 129:
  return (IP_TOS);
 case 128:
  return (IP_TTL);
 case 130:
  return (IP_OPTIONS);
 case 133:
  return (IP_MULTICAST_IF);
 case 131:
  return (IP_MULTICAST_TTL);
 case 132:
  return (IP_MULTICAST_LOOP);
 case 136:
  return (IP_ADD_MEMBERSHIP);
 case 135:
  return (IP_DROP_MEMBERSHIP);
 case 134:
  return (IP_HDRINCL);
 }
 return (-1);
}
