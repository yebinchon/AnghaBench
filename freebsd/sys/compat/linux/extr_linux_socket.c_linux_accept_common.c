
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__* td_retval; } ;
struct socket {scalar_t__ so_type; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef struct sockaddr l_sockaddr ;
struct file {struct socket* f_data; } ;
typedef int len ;
typedef int l_uintptr_t ;


 int EFAULT ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int M_SONAME ;
 int * PTRIN (int) ;
 scalar_t__ SOCK_DGRAM ;
 int bsd_to_linux_sockaddr (struct sockaddr*,struct sockaddr**,int) ;
 int cap_accept_rights ;
 int copyin (int *,int*,int) ;
 int copyout (struct sockaddr*,int *,int) ;
 int fdrop (struct file*,struct thread*) ;
 int free (struct sockaddr*,int ) ;
 int getsock_cap (struct thread*,int,int *,struct file**,int *,int *) ;
 int kern_accept4 (struct thread*,int,struct sockaddr**,int*,int,struct file**) ;
 int kern_close (struct thread*,scalar_t__) ;
 int linux_set_socket_flags (int,int*) ;

__attribute__((used)) static int
linux_accept_common(struct thread *td, int s, l_uintptr_t addr,
    l_uintptr_t namelen, int flags)
{
 struct l_sockaddr *lsa;
 struct sockaddr *sa;
 struct file *fp;
 int bflags, len;
 struct socket *so;
 int error, error1;

 bflags = 0;
 error = linux_set_socket_flags(flags, &bflags);
 if (error != 0)
  return (error);

 sa = ((void*)0);
 if (PTRIN(addr) == ((void*)0)) {
  len = 0;
  error = kern_accept4(td, s, ((void*)0), ((void*)0), bflags, ((void*)0));
 } else {
  error = copyin(PTRIN(namelen), &len, sizeof(len));
  if (error != 0)
   return (error);
  if (len < 0)
   return (EINVAL);
  error = kern_accept4(td, s, &sa, &len, bflags, &fp);
  if (error == 0)
   fdrop(fp, td);
 }

 if (error != 0) {




  if (error == EFAULT && namelen != sizeof(struct sockaddr_in))
  {
   error = EINVAL;
   goto out;
  }
  if (error == EINVAL) {
   error1 = getsock_cap(td, s, &cap_accept_rights, &fp, ((void*)0), ((void*)0));
   if (error1 != 0) {
    error = error1;
    goto out;
   }
   so = fp->f_data;
   if (so->so_type == SOCK_DGRAM)
    error = EOPNOTSUPP;
   fdrop(fp, td);
  }
  goto out;
 }

 if (len != 0 && error == 0) {
  error = bsd_to_linux_sockaddr(sa, &lsa, len);
  if (error == 0)
   error = copyout(lsa, PTRIN(addr), len);
  free(lsa, M_SONAME);
 }

 free(sa, M_SONAME);

out:
 if (error != 0) {
  (void)kern_close(td, td->td_retval[0]);
  td->td_retval[0] = 0;
 }
 return (error);
}
