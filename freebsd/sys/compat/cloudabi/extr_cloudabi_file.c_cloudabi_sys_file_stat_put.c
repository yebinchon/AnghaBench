
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_2__ {int flags; int fd; } ;
struct cloudabi_sys_file_stat_put_args {int flags; TYPE_1__ fd; int path_len; int path; int buf; } ;
typedef int fs ;
typedef int cloudabi_filestat_t ;


 int AT_SYMLINK_NOFOLLOW ;
 int CLOUDABI_FILESTAT_ATIM ;
 int CLOUDABI_FILESTAT_ATIM_NOW ;
 int CLOUDABI_FILESTAT_MTIM ;
 int CLOUDABI_FILESTAT_MTIM_NOW ;
 int CLOUDABI_LOOKUP_SYMLINK_FOLLOW ;
 int EINVAL ;
 int UIO_SYSSPACE ;
 int cloudabi_freestr (char*) ;
 int convert_utimens_arguments (int *,int,struct timespec*) ;
 int copyin (int ,int *,int) ;
 int copyin_path (int ,int ,char**) ;
 int kern_utimensat (struct thread*,int ,char*,int ,struct timespec*,int ,int ) ;

int
cloudabi_sys_file_stat_put(struct thread *td,
    struct cloudabi_sys_file_stat_put_args *uap)
{
 cloudabi_filestat_t fs;
 struct timespec ts[2];
 char *path;
 int error;





 if ((uap->flags & ~(CLOUDABI_FILESTAT_ATIM |
     CLOUDABI_FILESTAT_ATIM_NOW | CLOUDABI_FILESTAT_MTIM |
     CLOUDABI_FILESTAT_MTIM_NOW)) != 0)
  return (EINVAL);

 error = copyin(uap->buf, &fs, sizeof(fs));
 if (error != 0)
  return (error);
 error = copyin_path(uap->path, uap->path_len, &path);
 if (error != 0)
  return (error);

 convert_utimens_arguments(&fs, uap->flags, ts);
 error = kern_utimensat(td, uap->fd.fd, path, UIO_SYSSPACE, ts,
     UIO_SYSSPACE, (uap->fd.flags & CLOUDABI_LOOKUP_SYMLINK_FOLLOW) ?
     0 : AT_SYMLINK_NOFOLLOW);
 cloudabi_freestr(path);
 return (error);
}
