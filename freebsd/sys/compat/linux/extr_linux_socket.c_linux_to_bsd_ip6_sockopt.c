
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPV6_CHECKSUM ;
 int IPV6_DONTFRAG ;
 int IPV6_DSTOPTS ;
 int IPV6_HOPLIMIT ;
 int IPV6_HOPOPTS ;
 int IPV6_JOIN_GROUP ;
 int IPV6_LEAVE_GROUP ;
 int IPV6_MULTICAST_HOPS ;
 int IPV6_MULTICAST_IF ;
 int IPV6_MULTICAST_LOOP ;
 int IPV6_NEXTHOP ;
 int IPV6_PATHMTU ;
 int IPV6_PKTINFO ;
 int IPV6_RECVDSTOPTS ;
 int IPV6_RECVHOPLIMIT ;
 int IPV6_RECVHOPOPTS ;
 int IPV6_RECVPATHMTU ;
 int IPV6_RECVPKTINFO ;
 int IPV6_RECVRTHDR ;
 int IPV6_RTHDR ;
 int IPV6_RTHDRDSTOPTS ;
 int IPV6_UNICAST_HOPS ;
 int IPV6_V6ONLY ;
__attribute__((used)) static int
linux_to_bsd_ip6_sockopt(int opt)
{

 switch (opt) {
 case 140:
  return (IPV6_NEXTHOP);
 case 129:
  return (IPV6_UNICAST_HOPS);
 case 142:
  return (IPV6_MULTICAST_IF);
 case 143:
  return (IPV6_MULTICAST_HOPS);
 case 141:
  return (IPV6_MULTICAST_LOOP);
 case 150:
  return (IPV6_JOIN_GROUP);
 case 147:
  return (IPV6_LEAVE_GROUP);
 case 128:
  return (IPV6_V6ONLY);
 case 148:
  return (IPV6_DONTFRAG);
 }
 return (-1);
}
