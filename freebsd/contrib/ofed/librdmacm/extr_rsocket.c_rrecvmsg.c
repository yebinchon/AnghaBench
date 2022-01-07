
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int msg_flags; scalar_t__ msg_iovlen; int msg_iov; scalar_t__ msg_controllen; scalar_t__ msg_control; } ;
typedef int ssize_t ;


 int ENOTSUP ;
 int ERR (int ) ;
 int rrecvv (int,int ,int,int ) ;

ssize_t rrecvmsg(int socket, struct msghdr *msg, int flags)
{
 if (msg->msg_control && msg->msg_controllen)
  return ERR(ENOTSUP);

 return rrecvv(socket, msg->msg_iov, (int) msg->msg_iovlen, msg->msg_flags);
}
