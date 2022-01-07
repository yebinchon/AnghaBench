
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_nl {int dummy; } ;
struct msghdr {int msg_namelen; int msg_iovlen; int msg_flags; scalar_t__ msg_controllen; int * msg_control; struct iovec* msg_iov; void* msg_name; } ;
struct iovec {void* member_0; size_t member_1; } ;
typedef int nladdr ;


 scalar_t__ EINTR ;
 int MSG_TRUNC ;
 scalar_t__ errno ;
 int recvmsg (int,struct msghdr*,int ) ;

__attribute__((used)) static int
nl_recvmsg(int sd, int request, int seq,
    void *buf, size_t buflen,
    int *flags)
{
  struct msghdr msg;
  struct iovec iov = { buf, buflen };
  struct sockaddr_nl nladdr;
  int read_len;

  for (;;){
    msg.msg_name = (void *)&nladdr;
    msg.msg_namelen = sizeof(nladdr);
    msg.msg_iov = &iov;
    msg.msg_iovlen = 1;
    msg.msg_control = ((void*)0);
    msg.msg_controllen = 0;
    msg.msg_flags = 0;
    read_len = recvmsg(sd, &msg, 0);
    if ((read_len < 0 && errno == EINTR) || (msg.msg_flags & MSG_TRUNC))
      continue;
    if (flags) *flags = msg.msg_flags;
    break;
  }
  return read_len;
}
