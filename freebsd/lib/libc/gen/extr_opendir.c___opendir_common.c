
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct statfs {int f_flags; int f_fstypename; } ;
struct _telldir {scalar_t__ td_loccnt; int td_locq; } ;
struct TYPE_6__ {int dd_fd; int dd_flags; int dd_len; scalar_t__ dd_size; struct TYPE_6__* dd_buf; scalar_t__ dd_seek; int * dd_compat_de; struct _telldir* dd_td; int * dd_lock; scalar_t__ dd_loc; } ;
typedef TYPE_1__ DIR ;


 int DIRBLKSIZ ;
 int DTF_NODUP ;
 int EINVAL ;
 int ENOTDIR ;
 int LIST_INIT (int *) ;
 int MNT_UNION ;
 int __DTF_READALL ;
 int __DTF_SKIPREAD ;
 int _filldir (TYPE_1__*,int) ;
 scalar_t__ _fstatfs (int,struct statfs*) ;
 scalar_t__ _getdirentries (int,TYPE_1__*,int,scalar_t__*) ;
 int errno ;
 int free (TYPE_1__*) ;
 int getpagesize () ;
 void* malloc (int) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static DIR *
__opendir_common(int fd, int flags, bool use_current_pos)
{
 DIR *dirp;
 int incr;
 int saved_errno;
 int unionstack;

 if ((dirp = malloc(sizeof(DIR) + sizeof(struct _telldir))) == ((void*)0))
  return (((void*)0));

 dirp->dd_buf = ((void*)0);
 dirp->dd_fd = fd;
 dirp->dd_flags = flags;
 dirp->dd_loc = 0;
 dirp->dd_lock = ((void*)0);
 dirp->dd_td = (struct _telldir *)((char *)dirp + sizeof(DIR));
 LIST_INIT(&dirp->dd_td->td_locq);
 dirp->dd_td->td_loccnt = 0;
 dirp->dd_compat_de = ((void*)0);






 incr = getpagesize();
 if ((incr % DIRBLKSIZ) != 0)
  incr = DIRBLKSIZ;




 if (flags & DTF_NODUP) {
  struct statfs sfb;

  if (_fstatfs(fd, &sfb) < 0)
   goto fail;
  unionstack = !strcmp(sfb.f_fstypename, "unionfs")
      || (sfb.f_flags & MNT_UNION);
 } else {
  unionstack = 0;
 }

 if (unionstack) {
  if (!_filldir(dirp, use_current_pos))
   goto fail;
  dirp->dd_flags |= __DTF_READALL;
 } else {
  dirp->dd_len = incr;
  dirp->dd_buf = malloc(dirp->dd_len);
  if (dirp->dd_buf == ((void*)0))
   goto fail;
  if (use_current_pos) {





   dirp->dd_size = _getdirentries(dirp->dd_fd,
       dirp->dd_buf, dirp->dd_len, &dirp->dd_seek);
   if (dirp->dd_size < 0) {
    if (errno == EINVAL)
     errno = ENOTDIR;
    goto fail;
   }
   dirp->dd_flags |= __DTF_SKIPREAD;
  } else {
   dirp->dd_size = 0;
   dirp->dd_seek = 0;
  }
 }

 return (dirp);

fail:
 saved_errno = errno;
 free(dirp->dd_buf);
 free(dirp);
 errno = saved_errno;
 return (((void*)0));
}
