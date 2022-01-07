
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int dummy; } ;


 scalar_t__ EINTR ;
 int PJDLOG_ASSERT (int) ;
 scalar_t__ errno ;
 int fd_wait (int,int) ;
 int sendmsg (int,struct msghdr const*,int ) ;

__attribute__((used)) static int
msg_send(int sock, const struct msghdr *msg)
{

 PJDLOG_ASSERT(sock >= 0);

 for (;;) {
  fd_wait(sock, 0);
  if (sendmsg(sock, msg, 0) == -1) {
   if (errno == EINTR)
    continue;
   return (-1);
  }
  break;
 }

 return (0);
}
