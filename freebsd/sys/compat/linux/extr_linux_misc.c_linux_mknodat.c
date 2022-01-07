
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int * td_retval; } ;
struct linux_mknodat_args {int dfd; int mode; int dev; int filename; } ;


 int AT_FDCWD ;
 int EINVAL ;
 int EPERM ;
 int LCONVPATHCREAT_AT (struct thread*,int ,char**,int) ;
 int LFREEPATH (char*) ;
 int LINUX_AT_FDCWD ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;




 int S_IFMT ;


 int UIO_SYSSPACE ;
 int kern_close (struct thread*,int ) ;
 int kern_mkfifoat (struct thread*,int,char*,int ,int) ;
 int kern_mknodat (struct thread*,int,char*,int ,int,int ) ;
 int kern_openat (struct thread*,int,char*,int ,int,int) ;

int
linux_mknodat(struct thread *td, struct linux_mknodat_args *args)
{
 char *path;
 int error, dfd;

 dfd = (args->dfd == LINUX_AT_FDCWD) ? AT_FDCWD : args->dfd;
 LCONVPATHCREAT_AT(td, args->filename, &path, dfd);

 switch (args->mode & S_IFMT) {
 case 130:
 case 128:
  error = kern_mkfifoat(td, dfd, path, UIO_SYSSPACE, args->mode);
  break;

 case 132:
 case 133:
  error = kern_mknodat(td, dfd, path, UIO_SYSSPACE, args->mode,
      args->dev);
  break;

 case 131:
  error = EPERM;
  break;

 case 0:
  args->mode |= 129;

 case 129:
  error = kern_openat(td, dfd, path, UIO_SYSSPACE,
      O_WRONLY | O_CREAT | O_TRUNC, args->mode);
  if (error == 0)
   kern_close(td, td->td_retval[0]);
  break;

 default:
  error = EINVAL;
  break;
 }
 LFREEPATH(path);
 return (error);
}
