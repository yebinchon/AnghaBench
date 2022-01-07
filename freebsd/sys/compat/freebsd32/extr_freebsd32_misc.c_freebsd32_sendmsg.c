
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sockaddr {int dummy; } ;
struct msghdr32 {int msg_iovlen; int msg_iov; } ;
struct msghdr {int msg_controllen; int * msg_control; struct sockaddr* msg_name; int msg_namelen; struct sockaddr* msg_iov; } ;
struct mbuf {int dummy; } ;
typedef struct sockaddr iovec ;
struct freebsd32_sendmsg_args {int flags; int s; int msg; } ;
struct cmsghdr {int dummy; } ;
typedef int m32 ;


 int EINVAL ;
 int EMSGSIZE ;
 int M_IOV ;
 int M_SONAME ;
 int PTRIN (int ) ;
 int UIO_USERSPACE ;
 int copyin (int ,struct msghdr32*,int) ;
 int free (struct sockaddr*,int ) ;
 int freebsd32_copyin_control (struct mbuf**,int *,int) ;
 int freebsd32_copyiniov (int ,int ,struct sockaddr**,int ) ;
 int freebsd32_copyinmsghdr (int ,struct msghdr*) ;
 int getsockaddr (struct sockaddr**,struct sockaddr*,int ) ;
 int kern_sendit (struct thread*,int ,struct msghdr*,int ,struct mbuf*,int ) ;

int
freebsd32_sendmsg(struct thread *td,
    struct freebsd32_sendmsg_args *uap)
{
 struct msghdr msg;
 struct msghdr32 m32;
 struct iovec *iov;
 struct mbuf *control = ((void*)0);
 struct sockaddr *to = ((void*)0);
 int error;

 error = copyin(uap->msg, &m32, sizeof(m32));
 if (error)
  return (error);
 error = freebsd32_copyinmsghdr(uap->msg, &msg);
 if (error)
  return (error);
 error = freebsd32_copyiniov(PTRIN(m32.msg_iov), m32.msg_iovlen, &iov,
     EMSGSIZE);
 if (error)
  return (error);
 msg.msg_iov = iov;
 if (msg.msg_name != ((void*)0)) {
  error = getsockaddr(&to, msg.msg_name, msg.msg_namelen);
  if (error) {
   to = ((void*)0);
   goto out;
  }
  msg.msg_name = to;
 }

 if (msg.msg_control) {
  if (msg.msg_controllen < sizeof(struct cmsghdr)) {
   error = EINVAL;
   goto out;
  }

  error = freebsd32_copyin_control(&control, msg.msg_control,
      msg.msg_controllen);
  if (error)
   goto out;

  msg.msg_control = ((void*)0);
  msg.msg_controllen = 0;
 }

 error = kern_sendit(td, uap->s, &msg, uap->flags, control,
     UIO_USERSPACE);

out:
 free(iov, M_IOV);
 if (to)
  free(to, M_SONAME);
 return (error);
}
