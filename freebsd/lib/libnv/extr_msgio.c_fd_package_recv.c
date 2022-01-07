
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct msghdr {int iov_len; int msg_iovlen; size_t msg_controllen; int * msg_control; struct msghdr* msg_iov; int * iov_base; } ;
struct iovec {int iov_len; int msg_iovlen; size_t msg_controllen; int * msg_control; struct iovec* msg_iov; int * iov_base; } ;
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; int cmsg_len; } ;
typedef int msg ;
typedef int iov ;
typedef int dummy ;


 int CMSG_DATA (struct cmsghdr*) ;
 struct cmsghdr* CMSG_FIRSTHDR (struct msghdr*) ;
 int CMSG_LEN (int ) ;
 struct cmsghdr* CMSG_NXTHDR (struct msghdr*,struct cmsghdr*) ;
 size_t CMSG_SPACE (int) ;
 int EINVAL ;
 int FD_CLOEXEC ;
 int F_SETFD ;
 int PJDLOG_ASSERT (int) ;
 scalar_t__ SCM_RIGHTS ;
 scalar_t__ SOL_SOCKET ;
 int bcopy (int ,int*,int) ;
 int bzero (struct msghdr*,int) ;
 int * calloc (int,size_t) ;
 int close (int) ;
 int errno ;
 int fcntl (int,int ,int ) ;
 int free (int *) ;
 int msg_recv (int,struct msghdr*) ;

__attribute__((used)) static int
fd_package_recv(int sock, int *fds, size_t nfds)
{
 struct msghdr msg;
 struct cmsghdr *cmsg;
 unsigned int i;
 int serrno, ret;
 struct iovec iov;
 uint8_t dummy;

 PJDLOG_ASSERT(sock >= 0);
 PJDLOG_ASSERT(nfds > 0);
 PJDLOG_ASSERT(fds != ((void*)0));

 bzero(&msg, sizeof(msg));
 bzero(&iov, sizeof(iov));




 iov.iov_base = &dummy;
 iov.iov_len = sizeof(dummy);

 msg.msg_iov = &iov;
 msg.msg_iovlen = 1;
 msg.msg_controllen = nfds * CMSG_SPACE(sizeof(int));
 msg.msg_control = calloc(1, msg.msg_controllen);
 if (msg.msg_control == ((void*)0))
  return (-1);

 ret = -1;

 if (msg_recv(sock, &msg) == -1)
  goto end;

 i = 0;
 cmsg = CMSG_FIRSTHDR(&msg);
 while (cmsg && i < nfds) {
  unsigned int n;

  if (cmsg->cmsg_level != SOL_SOCKET ||
      cmsg->cmsg_type != SCM_RIGHTS) {
   errno = EINVAL;
   break;
  }
  n = (cmsg->cmsg_len - CMSG_LEN(0)) / sizeof(int);
  if (i + n > nfds) {
   errno = EINVAL;
   break;
  }
  bcopy(CMSG_DATA(cmsg), fds + i, sizeof(int) * n);
  cmsg = CMSG_NXTHDR(&msg, cmsg);
  i += n;
 }

 if (cmsg != ((void*)0) || i < nfds) {
  unsigned int last;





  last = i;
  for (i = 0; i < last; i++) {
   if (fds[i] >= 0) {
    close(fds[i]);
   }
  }
  errno = EINVAL;
  goto end;
 }







 for (i = 0; i < nfds; i++) {
  (void) fcntl(fds[i], F_SETFD, FD_CLOEXEC);
 }


 ret = 0;
end:
 serrno = errno;
 free(msg.msg_control);
 errno = serrno;
 return (ret);
}
