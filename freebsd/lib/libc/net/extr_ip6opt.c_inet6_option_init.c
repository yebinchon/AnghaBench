
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmsghdr {int cmsg_type; int cmsg_len; int cmsg_level; } ;


 int CMSG_LEN (int ) ;
 int IPPROTO_IPV6 ;
 int is_ipv6_dstopts (int) ;
 int is_ipv6_hopopts (int) ;

int
inet6_option_init(void *bp, struct cmsghdr **cmsgp, int type)
{
 struct cmsghdr *ch = (struct cmsghdr *)bp;


 if (!is_ipv6_hopopts(type) && !is_ipv6_dstopts(type))
  return(-1);

 ch->cmsg_level = IPPROTO_IPV6;
 ch->cmsg_type = type;
 ch->cmsg_len = CMSG_LEN(0);

 *cmsgp = ch;
 return(0);
}
