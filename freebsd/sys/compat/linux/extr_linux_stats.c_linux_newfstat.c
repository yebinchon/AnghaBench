
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct stat {int dummy; } ;
struct linux_newfstat_args {int buf; int fd; } ;


 int kern_fstat (struct thread*,int ,struct stat*) ;
 int newstat_copyout (struct stat*,int ) ;
 int translate_fd_major_minor (struct thread*,int ,struct stat*) ;

int
linux_newfstat(struct thread *td, struct linux_newfstat_args *args)
{
 struct stat buf;
 int error;

 error = kern_fstat(td, args->fd, &buf);
 translate_fd_major_minor(td, args->fd, &buf);
 if (!error)
  error = newstat_copyout(&buf, args->buf);

 return (error);
}
