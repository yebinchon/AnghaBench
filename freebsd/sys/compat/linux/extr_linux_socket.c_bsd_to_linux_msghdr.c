
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int msg_control; int msg_iovlen; int msg_iov; int msg_namelen; int msg_name; } ;
struct l_msghdr {void* msg_control; int msg_iovlen; void* msg_iov; int msg_namelen; void* msg_name; } ;


 void* PTROUT (int ) ;

__attribute__((used)) static int
bsd_to_linux_msghdr(const struct msghdr *bhdr, struct l_msghdr *lhdr)
{
 lhdr->msg_name = PTROUT(bhdr->msg_name);
 lhdr->msg_namelen = bhdr->msg_namelen;
 lhdr->msg_iov = PTROUT(bhdr->msg_iov);
 lhdr->msg_iovlen = bhdr->msg_iovlen;
 lhdr->msg_control = PTROUT(bhdr->msg_control);
 return (0);
}
