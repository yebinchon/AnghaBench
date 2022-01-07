
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_char ;
struct TYPE_6__ {scalar_t__ s_addr; } ;
struct ip {int ip_hl; int ip_p; TYPE_1__ ip_dst; TYPE_1__ ip_src; int ip_sum; int ip_ttl; int ip_len; int ip_v; } ;
struct iodesc {TYPE_1__ destip; TYPE_1__ myip; int destport; int myport; } ;
typedef int ssize_t ;


 int ETHERTYPE_IP ;
 scalar_t__ INADDR_BROADCAST ;
 int IPDEFTTL ;
 int IPVERSION ;
 scalar_t__ SAMENET (TYPE_1__,TYPE_1__,scalar_t__) ;
 int * arpwhohas (struct iodesc*,TYPE_1__) ;
 int bzero (struct ip*,int) ;
 scalar_t__ debug ;
 TYPE_1__ gateip ;
 int htons (size_t) ;
 int in_cksum (struct ip*,int) ;
 char* inet_ntoa (TYPE_1__) ;
 scalar_t__ netmask ;
 int ntohs (int ) ;
 int panic (char*,int,size_t) ;
 int printf (char*,...) ;
 int sendether (struct iodesc*,struct ip*,size_t,int *,int ) ;

ssize_t
sendip(struct iodesc *d, void *pkt, size_t len, uint8_t proto)
{
 ssize_t cc;
 struct ip *ip;
 u_char *ea;
 ip = (struct ip *)pkt - 1;
 len += sizeof(*ip);

 bzero(ip, sizeof(*ip));

 ip->ip_v = IPVERSION;
 ip->ip_hl = sizeof(*ip) >> 2;
 ip->ip_len = htons(len);
 ip->ip_p = proto;
 ip->ip_ttl = IPDEFTTL;
 ip->ip_src = d->myip;
 ip->ip_dst = d->destip;
 ip->ip_sum = in_cksum(ip, sizeof(*ip));

 if (ip->ip_dst.s_addr == INADDR_BROADCAST || ip->ip_src.s_addr == 0 ||
     netmask == 0 || SAMENET(ip->ip_src, ip->ip_dst, netmask))
  ea = arpwhohas(d, ip->ip_dst);
 else
  ea = arpwhohas(d, gateip);

 cc = sendether(d, ip, len, ea, ETHERTYPE_IP);
 if (cc == -1)
  return (-1);
 if (cc != len)
  panic("sendip: bad write (%zd != %zd)", cc, len);
 return (cc - sizeof(*ip));
}
