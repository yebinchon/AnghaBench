
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr32 {int msg_flags; int msg_controllen; int msg_control; int msg_iovlen; int msg_iov; int msg_namelen; int msg_name; } ;
struct msghdr {int msg_flags; int msg_controllen; void* msg_control; int msg_iovlen; void* msg_iov; int msg_namelen; void* msg_name; } ;
typedef int m32 ;


 void* PTRIN (int ) ;
 int copyin (struct msghdr32*,struct msghdr32*,int) ;

__attribute__((used)) static int
freebsd32_copyinmsghdr(struct msghdr32 *msg32, struct msghdr *msg)
{
 struct msghdr32 m32;
 int error;

 error = copyin(msg32, &m32, sizeof(m32));
 if (error)
  return (error);
 msg->msg_name = PTRIN(m32.msg_name);
 msg->msg_namelen = m32.msg_namelen;
 msg->msg_iov = PTRIN(m32.msg_iov);
 msg->msg_iovlen = m32.msg_iovlen;
 msg->msg_control = PTRIN(m32.msg_control);
 msg->msg_controllen = m32.msg_controllen;
 msg->msg_flags = m32.msg_flags;
 return (0);
}
