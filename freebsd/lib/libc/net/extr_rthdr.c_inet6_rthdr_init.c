
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_rthdr0 {int dummy; } ;
struct ip6_rthdr {int ip6r_type; } ;
struct in6_addr {int dummy; } ;
struct cmsghdr {void* cmsg_len; int cmsg_type; int cmsg_level; } ;


 scalar_t__ CMSG_DATA (struct cmsghdr*) ;
 void* CMSG_LEN (int) ;
 int IPPROTO_IPV6 ;
 int IPV6_RTHDR ;

 int bzero (struct ip6_rthdr*,int) ;

struct cmsghdr *
inet6_rthdr_init(void *bp, int type)
{
 struct cmsghdr *ch = (struct cmsghdr *)bp;
 struct ip6_rthdr *rthdr;

 rthdr = (struct ip6_rthdr *)CMSG_DATA(ch);

 ch->cmsg_level = IPPROTO_IPV6;
 ch->cmsg_type = IPV6_RTHDR;

 switch (type) {
 case 128:




  ch->cmsg_len = CMSG_LEN(sizeof(struct ip6_rthdr0));


  bzero(rthdr, sizeof(struct ip6_rthdr0));
  rthdr->ip6r_type = 128;
  return (ch);
 default:
  return (((void*)0));
 }
}
