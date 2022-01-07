
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct thread {int dummy; } ;
struct stat {int st_mode; } ;
struct TYPE_6__ {int flags; int fd; } ;
struct cloudabi_sys_file_stat_get_args {int buf; TYPE_1__ fd; int path_len; int path; } ;
typedef int csb ;
struct TYPE_7__ {void* st_filetype; } ;
typedef TYPE_2__ cloudabi_filestat_t ;


 int AT_SYMLINK_NOFOLLOW ;
 void* CLOUDABI_FILETYPE_BLOCK_DEVICE ;
 void* CLOUDABI_FILETYPE_CHARACTER_DEVICE ;
 void* CLOUDABI_FILETYPE_DIRECTORY ;
 void* CLOUDABI_FILETYPE_REGULAR_FILE ;
 void* CLOUDABI_FILETYPE_SOCKET_STREAM ;
 void* CLOUDABI_FILETYPE_SYMBOLIC_LINK ;
 void* CLOUDABI_FILETYPE_UNKNOWN ;
 int CLOUDABI_LOOKUP_SYMLINK_FOLLOW ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ S_ISSOCK (int ) ;
 int UIO_SYSSPACE ;
 int cloudabi_freestr (char*) ;
 int convert_stat (struct stat*,TYPE_2__*) ;
 int copyin_path (int ,int ,char**) ;
 int copyout (TYPE_2__*,int ,int) ;
 int kern_statat (struct thread*,int ,int ,char*,int ,struct stat*,int *) ;
 int memset (TYPE_2__*,int ,int) ;

int
cloudabi_sys_file_stat_get(struct thread *td,
    struct cloudabi_sys_file_stat_get_args *uap)
{
 struct stat sb;
 cloudabi_filestat_t csb;
 char *path;
 int error;

 memset(&csb, 0, sizeof(csb));

 error = copyin_path(uap->path, uap->path_len, &path);
 if (error != 0)
  return (error);

 error = kern_statat(td,
     (uap->fd.flags & CLOUDABI_LOOKUP_SYMLINK_FOLLOW) != 0 ? 0 :
     AT_SYMLINK_NOFOLLOW, uap->fd.fd, path, UIO_SYSSPACE, &sb, ((void*)0));
 cloudabi_freestr(path);
 if (error != 0)
  return (error);


 convert_stat(&sb, &csb);
 if (S_ISBLK(sb.st_mode))
  csb.st_filetype = CLOUDABI_FILETYPE_BLOCK_DEVICE;
 else if (S_ISCHR(sb.st_mode))
  csb.st_filetype = CLOUDABI_FILETYPE_CHARACTER_DEVICE;
 else if (S_ISDIR(sb.st_mode))
  csb.st_filetype = CLOUDABI_FILETYPE_DIRECTORY;
 else if (S_ISFIFO(sb.st_mode))
  csb.st_filetype = CLOUDABI_FILETYPE_SOCKET_STREAM;
 else if (S_ISREG(sb.st_mode))
  csb.st_filetype = CLOUDABI_FILETYPE_REGULAR_FILE;
 else if (S_ISSOCK(sb.st_mode)) {

  csb.st_filetype = CLOUDABI_FILETYPE_SOCKET_STREAM;
 } else if (S_ISLNK(sb.st_mode))
  csb.st_filetype = CLOUDABI_FILETYPE_SYMBOLIC_LINK;
 else
  csb.st_filetype = CLOUDABI_FILETYPE_UNKNOWN;
 return (copyout(&csb, uap->buf, sizeof(csb)));
}
