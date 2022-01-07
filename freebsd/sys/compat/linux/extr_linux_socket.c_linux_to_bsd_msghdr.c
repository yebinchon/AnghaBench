
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int msg_flags; void* msg_control; int msg_iovlen; void* msg_iov; int msg_namelen; void* msg_name; } ;
struct l_msghdr {scalar_t__ msg_controllen; int msg_flags; int msg_control; int msg_iovlen; int msg_iov; int msg_namelen; int msg_name; } ;


 int ENOBUFS ;
 scalar_t__ INT_MAX ;
 void* PTRIN (int ) ;
 int linux_to_bsd_msg_flags (int ) ;

__attribute__((used)) static int
linux_to_bsd_msghdr(struct msghdr *bhdr, const struct l_msghdr *lhdr)
{
 if (lhdr->msg_controllen > INT_MAX)
  return (ENOBUFS);

 bhdr->msg_name = PTRIN(lhdr->msg_name);
 bhdr->msg_namelen = lhdr->msg_namelen;
 bhdr->msg_iov = PTRIN(lhdr->msg_iov);
 bhdr->msg_iovlen = lhdr->msg_iovlen;
 bhdr->msg_control = PTRIN(lhdr->msg_control);
 bhdr->msg_flags = linux_to_bsd_msg_flags(lhdr->msg_flags);
 return (0);
}
