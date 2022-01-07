
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct cloudabi_sys_file_stat_fput_args {int flags; int fd; int buf; } ;
typedef int fs ;
struct TYPE_4__ {int st_size; } ;
typedef TYPE_1__ cloudabi_filestat_t ;


 int CLOUDABI_FILESTAT_ATIM ;
 int CLOUDABI_FILESTAT_ATIM_NOW ;
 int CLOUDABI_FILESTAT_MTIM ;
 int CLOUDABI_FILESTAT_MTIM_NOW ;
 int CLOUDABI_FILESTAT_SIZE ;
 int EINVAL ;
 int UIO_SYSSPACE ;
 int convert_utimens_arguments (TYPE_1__*,int,struct timespec*) ;
 int copyin (int ,TYPE_1__*,int) ;
 int kern_ftruncate (struct thread*,int ,int ) ;
 int kern_futimens (struct thread*,int ,struct timespec*,int ) ;

int
cloudabi_sys_file_stat_fput(struct thread *td,
    struct cloudabi_sys_file_stat_fput_args *uap)
{
 cloudabi_filestat_t fs;
 struct timespec ts[2];
 int error;

 error = copyin(uap->buf, &fs, sizeof(fs));
 if (error != 0)
  return (error);





 if ((uap->flags & CLOUDABI_FILESTAT_SIZE) != 0) {

  if ((uap->flags & ~CLOUDABI_FILESTAT_SIZE) != 0)
   return (EINVAL);
  return (kern_ftruncate(td, uap->fd, fs.st_size));
 } else if ((uap->flags & (CLOUDABI_FILESTAT_ATIM |
     CLOUDABI_FILESTAT_ATIM_NOW | CLOUDABI_FILESTAT_MTIM |
     CLOUDABI_FILESTAT_MTIM_NOW)) != 0) {

  if ((uap->flags & ~(CLOUDABI_FILESTAT_ATIM |
      CLOUDABI_FILESTAT_ATIM_NOW | CLOUDABI_FILESTAT_MTIM |
      CLOUDABI_FILESTAT_MTIM_NOW)) != 0)
   return (EINVAL);
  convert_utimens_arguments(&fs, uap->flags, ts);
  return (kern_futimens(td, uap->fd, ts, UIO_SYSSPACE));
 }
 return (EINVAL);
}
