
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int dummy; } ;
struct cmsghdr {scalar_t__ cmsg_len; scalar_t__ cmsg_level; scalar_t__ cmsg_type; } ;
typedef int r ;


 int CMSG_DATA (struct cmsghdr*) ;
 scalar_t__ CMSG_FIRSTHDR (struct msghdr*) ;
 scalar_t__ CMSG_LEN (int) ;
 scalar_t__ CMSG_NXTHDR (struct msghdr*,struct cmsghdr*) ;
 scalar_t__ IPPROTO_IPV6 ;
 scalar_t__ IPV6_HOPLIMIT ;
 int memcpy (int*,int ,int) ;

__attribute__((used)) static int
get_hoplim(struct msghdr *mhdr)
{
 struct cmsghdr *cm;

 for (cm = (struct cmsghdr *)CMSG_FIRSTHDR(mhdr); cm;
      cm = (struct cmsghdr *)CMSG_NXTHDR(mhdr, cm)) {
  if (cm->cmsg_len == 0)
   return(-1);

  if (cm->cmsg_level == IPPROTO_IPV6 &&
      cm->cmsg_type == IPV6_HOPLIMIT &&
      cm->cmsg_len == CMSG_LEN(sizeof(int))) {
   int r;

   memcpy(&r, CMSG_DATA(cm), sizeof(r));
   return(r);
  }
 }

 return(-1);
}
