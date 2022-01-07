
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; int tv_sec; } ;
struct thread {int dummy; } ;
struct linux_utimensat_args {int dfd; int flags; int * pathname; int * times; } ;
struct l_timespec {int tv_nsec; int tv_sec; } ;
typedef int l_times ;


 int AT_FDCWD ;
 int AT_SYMLINK_NOFOLLOW ;
 int EINVAL ;
 int LCONVPATHEXIST_AT (struct thread*,int *,char**,int) ;
 int LFREEPATH (char*) ;
 int LINUX_AT_FDCWD ;
 int LINUX_AT_SYMLINK_NOFOLLOW ;


 int UIO_SYSSPACE ;
 void* UTIME_NOW ;
 scalar_t__ UTIME_OMIT ;
 int copyin (int *,struct l_timespec*,int) ;
 int kern_futimens (struct thread*,int,struct timespec*,int ) ;
 int kern_utimensat (struct thread*,int,char*,int ,struct timespec*,int ,int) ;
 scalar_t__ linux_utimensat_nsec_valid (int) ;

int
linux_utimensat(struct thread *td, struct linux_utimensat_args *args)
{
 struct l_timespec l_times[2];
 struct timespec times[2], *timesp = ((void*)0);
 char *path = ((void*)0);
 int error, dfd, flags = 0;

 dfd = (args->dfd == LINUX_AT_FDCWD) ? AT_FDCWD : args->dfd;

 if (args->flags & ~LINUX_AT_SYMLINK_NOFOLLOW)
  return (EINVAL);

 if (args->times != ((void*)0)) {
  error = copyin(args->times, l_times, sizeof(l_times));
  if (error != 0)
   return (error);

  if (linux_utimensat_nsec_valid(l_times[0].tv_nsec) != 0 ||
      linux_utimensat_nsec_valid(l_times[1].tv_nsec) != 0)
   return (EINVAL);

  times[0].tv_sec = l_times[0].tv_sec;
  switch (l_times[0].tv_nsec)
  {
  case 128:
   times[0].tv_nsec = UTIME_OMIT;
   break;
  case 129:
   times[0].tv_nsec = UTIME_NOW;
   break;
  default:
   times[0].tv_nsec = l_times[0].tv_nsec;
  }

  times[1].tv_sec = l_times[1].tv_sec;
  switch (l_times[1].tv_nsec)
  {
  case 128:
   times[1].tv_nsec = UTIME_OMIT;
   break;
  case 129:
   times[1].tv_nsec = UTIME_NOW;
   break;
  default:
   times[1].tv_nsec = l_times[1].tv_nsec;
   break;
  }
  timesp = times;




  if (times[0].tv_nsec == UTIME_OMIT &&
      times[1].tv_nsec == UTIME_OMIT)
   return (0);
 }

 if (args->pathname != ((void*)0))
  LCONVPATHEXIST_AT(td, args->pathname, &path, dfd);
 else if (args->flags != 0)
  return (EINVAL);

 if (args->flags & LINUX_AT_SYMLINK_NOFOLLOW)
  flags |= AT_SYMLINK_NOFOLLOW;

 if (path == ((void*)0))
  error = kern_futimens(td, dfd, timesp, UIO_SYSSPACE);
 else {
  error = kern_utimensat(td, dfd, path, UIO_SYSSPACE, timesp,
   UIO_SYSSPACE, flags);
  LFREEPATH(path);
 }

 return (error);
}
