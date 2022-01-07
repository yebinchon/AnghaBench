
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct thread {int dummy; } ;
struct socket {int so_error; void* so_emuldata; } ;
struct sockaddr {int dummy; } ;
struct linux_connect_args {int s; int namelen; int name; } ;
struct file {struct socket* f_data; } ;


 int AT_FDCWD ;
 int EISCONN ;
 int FNONBLOCK ;
 int M_SONAME ;
 int PTRIN (int ) ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 int cap_connect_rights ;
 int fdrop (struct file*,struct thread*) ;
 int free (struct sockaddr*,int ) ;
 int getsock_cap (struct thread*,int ,int *,struct file**,int*,int *) ;
 int kern_connectat (struct thread*,int ,int ,struct sockaddr*) ;
 int linux_to_bsd_sockaddr (int ,struct sockaddr**,int *) ;

int
linux_connect(struct thread *td, struct linux_connect_args *args)
{
 struct socket *so;
 struct sockaddr *sa;
 struct file *fp;
 u_int fflag;
 int error;

 error = linux_to_bsd_sockaddr(PTRIN(args->name), &sa,
     &args->namelen);
 if (error != 0)
  return (error);

 error = kern_connectat(td, AT_FDCWD, args->s, sa);
 free(sa, M_SONAME);
 if (error != EISCONN)
  return (error);






 error = getsock_cap(td, args->s, &cap_connect_rights,
     &fp, &fflag, ((void*)0));
 if (error != 0)
  return (error);

 error = EISCONN;
 so = fp->f_data;
 if (fflag & FNONBLOCK) {
  SOCK_LOCK(so);
  if (so->so_emuldata == 0)
   error = so->so_error;
  so->so_emuldata = (void *)1;
  SOCK_UNLOCK(so);
 }
 fdrop(fp, td);

 return (error);
}
