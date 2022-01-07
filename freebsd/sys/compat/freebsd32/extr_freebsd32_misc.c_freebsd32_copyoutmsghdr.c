
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr32 {int msg_flags; int msg_controllen; void* msg_control; int msg_iovlen; void* msg_iov; int msg_namelen; void* msg_name; } ;
struct msghdr {int msg_flags; int msg_controllen; int msg_control; int msg_iovlen; int msg_iov; int msg_namelen; int msg_name; } ;
typedef int m32 ;


 void* PTROUT (int ) ;
 int copyout (struct msghdr32*,struct msghdr32*,int) ;

__attribute__((used)) static int
freebsd32_copyoutmsghdr(struct msghdr *msg, struct msghdr32 *msg32)
{
 struct msghdr32 m32;
 int error;

 m32.msg_name = PTROUT(msg->msg_name);
 m32.msg_namelen = msg->msg_namelen;
 m32.msg_iov = PTROUT(msg->msg_iov);
 m32.msg_iovlen = msg->msg_iovlen;
 m32.msg_control = PTROUT(msg->msg_control);
 m32.msg_controllen = msg->msg_controllen;
 m32.msg_flags = msg->msg_flags;
 error = copyout(&m32, msg32, sizeof(m32));
 return (error);
}
