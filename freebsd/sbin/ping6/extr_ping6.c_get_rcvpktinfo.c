
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int dummy; } ;
struct in6_pktinfo {int dummy; } ;
struct cmsghdr {scalar_t__ cmsg_len; scalar_t__ cmsg_level; scalar_t__ cmsg_type; } ;
typedef int pi ;


 int CMSG_DATA (struct cmsghdr*) ;
 scalar_t__ CMSG_FIRSTHDR (struct msghdr*) ;
 scalar_t__ CMSG_LEN (int) ;
 scalar_t__ CMSG_NXTHDR (struct msghdr*,struct cmsghdr*) ;
 scalar_t__ IPPROTO_IPV6 ;
 scalar_t__ IPV6_PKTINFO ;
 int memcpy (struct in6_pktinfo*,int ,int) ;

__attribute__((used)) static struct in6_pktinfo *
get_rcvpktinfo(struct msghdr *mhdr)
{
 static struct in6_pktinfo pi;
 struct cmsghdr *cm;

 for (cm = (struct cmsghdr *)CMSG_FIRSTHDR(mhdr); cm;
      cm = (struct cmsghdr *)CMSG_NXTHDR(mhdr, cm)) {
  if (cm->cmsg_len == 0)
   return(((void*)0));

  if (cm->cmsg_level == IPPROTO_IPV6 &&
      cm->cmsg_type == IPV6_PKTINFO &&
      cm->cmsg_len == CMSG_LEN(sizeof(struct in6_pktinfo))) {
   memcpy(&pi, CMSG_DATA(cm), sizeof(pi));
   return(&pi);
  }
 }

 return(((void*)0));
}
