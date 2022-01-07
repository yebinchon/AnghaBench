
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct msghdr {int msg_iovlen; size_t msg_controllen; int * msg_control; struct iovec* msg_iov; } ;
struct iovec {int iov_len; scalar_t__* iov_base; } ;
struct cmsghdr {int dummy; } ;
typedef int msg ;
typedef int dummy ;


 struct cmsghdr* CMSG_FIRSTHDR (struct msghdr*) ;
 struct cmsghdr* CMSG_NXTHDR (struct msghdr*,struct cmsghdr*) ;
 size_t CMSG_SPACE (int) ;
 int PJDLOG_ASSERT (int) ;
 int bzero (struct msghdr*,int) ;
 int * calloc (int,size_t) ;
 int errno ;
 int free (int *) ;
 int msg_send (int,struct msghdr*) ;
 int msghdr_add_fd (struct cmsghdr*,int const) ;

__attribute__((used)) static int
fd_package_send(int sock, const int *fds, size_t nfds)
{
 struct msghdr msg;
 struct cmsghdr *cmsg;
 struct iovec iov;
 unsigned int i;
 int serrno, ret;
 uint8_t dummy;

 PJDLOG_ASSERT(sock >= 0);
 PJDLOG_ASSERT(fds != ((void*)0));
 PJDLOG_ASSERT(nfds > 0);

 bzero(&msg, sizeof(msg));




 dummy = 0;
 iov.iov_base = &dummy;
 iov.iov_len = sizeof(dummy);

 msg.msg_iov = &iov;
 msg.msg_iovlen = 1;
 msg.msg_controllen = nfds * CMSG_SPACE(sizeof(int));
 msg.msg_control = calloc(1, msg.msg_controllen);
 if (msg.msg_control == ((void*)0))
  return (-1);

 ret = -1;

 for (i = 0, cmsg = CMSG_FIRSTHDR(&msg); i < nfds && cmsg != ((void*)0);
     i++, cmsg = CMSG_NXTHDR(&msg, cmsg)) {
  if (msghdr_add_fd(cmsg, fds[i]) == -1)
   goto end;
 }

 if (msg_send(sock, &msg) == -1)
  goto end;

 ret = 0;
end:
 serrno = errno;
 free(msg.msg_control);
 errno = serrno;
 return (ret);
}
