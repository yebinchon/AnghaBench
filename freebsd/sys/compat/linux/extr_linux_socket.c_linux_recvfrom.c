
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
typedef int sockaddr ;
struct msghdr {int* msg_name; int msg_namelen; int msg_iovlen; int msg_flags; scalar_t__ msg_control; struct iovec* msg_iov; } ;
struct linux_recvfrom_args {int fromlen; int from; int s; int flags; int len; int buf; } ;
typedef int l_sockaddr ;
struct iovec {int iov_len; int * iov_base; } ;
typedef int fromlen ;


 int EINVAL ;
 int M_SONAME ;
 int M_WAITOK ;
 int * PTRIN (int ) ;
 int UIO_SYSSPACE ;
 int bsd_to_linux_sockaddr (int*,int**,int) ;
 int copyin (int *,int*,int) ;
 int copyout (int*,int *,int) ;
 int free (int*,int ) ;
 int kern_recvit (struct thread*,int ,struct msghdr*,int ,int *) ;
 int linux_to_bsd_msg_flags (int ) ;
 int* malloc (int,int ,int ) ;

int
linux_recvfrom(struct thread *td, struct linux_recvfrom_args *args)
{
 struct l_sockaddr *lsa;
 struct sockaddr *sa;
 struct msghdr msg;
 struct iovec aiov;
 int error, fromlen;

 if (PTRIN(args->fromlen) != ((void*)0)) {
  error = copyin(PTRIN(args->fromlen), &fromlen,
      sizeof(fromlen));
  if (error != 0)
   return (error);
  if (fromlen < 0)
   return (EINVAL);
  sa = malloc(fromlen, M_SONAME, M_WAITOK);
 } else {
  fromlen = 0;
  sa = ((void*)0);
 }

 msg.msg_name = sa;
 msg.msg_namelen = fromlen;
 msg.msg_iov = &aiov;
 msg.msg_iovlen = 1;
 aiov.iov_base = PTRIN(args->buf);
 aiov.iov_len = args->len;
 msg.msg_control = 0;
 msg.msg_flags = linux_to_bsd_msg_flags(args->flags);

 error = kern_recvit(td, args->s, &msg, UIO_SYSSPACE, ((void*)0));
 if (error != 0)
  goto out;

 if (PTRIN(args->from) != ((void*)0)) {
  error = bsd_to_linux_sockaddr(sa, &lsa, msg.msg_namelen);
  if (error == 0)
   error = copyout(lsa, PTRIN(args->from),
       msg.msg_namelen);
  free(lsa, M_SONAME);
 }

 if (error == 0 && PTRIN(args->fromlen) != ((void*)0))
  error = copyout(&msg.msg_namelen, PTRIN(args->fromlen),
      sizeof(msg.msg_namelen));
out:
 free(sa, M_SONAME);
 return (error);
}
