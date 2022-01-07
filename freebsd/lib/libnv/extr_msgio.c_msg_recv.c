
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int dummy; } ;


 scalar_t__ EINTR ;
 int MSG_CMSG_CLOEXEC ;
 int PJDLOG_ASSERT (int) ;
 scalar_t__ errno ;
 int fd_wait (int,int) ;
 int recvmsg (int,struct msghdr*,int) ;

__attribute__((used)) static int
msg_recv(int sock, struct msghdr *msg)
{
 int flags;

 PJDLOG_ASSERT(sock >= 0);




 flags = 0;


 for (;;) {
  fd_wait(sock, 1);
  if (recvmsg(sock, msg, flags) == -1) {
   if (errno == EINTR)
    continue;
   return (-1);
  }
  break;
 }

 return (0);
}
