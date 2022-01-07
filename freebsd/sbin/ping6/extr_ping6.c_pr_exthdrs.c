
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {void* msg_control; } ;
struct cmsghdr {scalar_t__ cmsg_level; int cmsg_type; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ caddr_t ;


 scalar_t__ CMSG_DATA (struct cmsghdr*) ;
 scalar_t__ CMSG_FIRSTHDR (struct msghdr*) ;
 scalar_t__ CMSG_NXTHDR (struct msghdr*,struct cmsghdr*) ;
 scalar_t__ CONTROLLEN ;
 scalar_t__ IPPROTO_IPV6 ;




 int pr_ip6opt (scalar_t__,size_t) ;
 int pr_rthdr (scalar_t__,size_t) ;
 int printf (char*) ;

__attribute__((used)) static void
pr_exthdrs(struct msghdr *mhdr)
{
 ssize_t bufsize;
 void *bufp;
 struct cmsghdr *cm;

 bufsize = 0;
 bufp = mhdr->msg_control;
 for (cm = (struct cmsghdr *)CMSG_FIRSTHDR(mhdr); cm;
      cm = (struct cmsghdr *)CMSG_NXTHDR(mhdr, cm)) {
  if (cm->cmsg_level != IPPROTO_IPV6)
   continue;

  bufsize = CONTROLLEN - ((caddr_t)CMSG_DATA(cm) - (caddr_t)bufp);
  if (bufsize <= 0)
   continue;
  switch (cm->cmsg_type) {
  case 130:
   printf("  HbH Options: ");
   pr_ip6opt(CMSG_DATA(cm), (size_t)bufsize);
   break;
  case 131:

  case 128:

   printf("  Dst Options: ");
   pr_ip6opt(CMSG_DATA(cm), (size_t)bufsize);
   break;
  case 129:
   printf("  Routing: ");
   pr_rthdr(CMSG_DATA(cm), (size_t)bufsize);
   break;
  }
 }
}
