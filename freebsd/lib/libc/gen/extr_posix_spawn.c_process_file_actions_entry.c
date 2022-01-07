
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fae_action; int fae_fildes; int fae_newfildes; int fae_mode; int fae_oflag; int fae_path; } ;
typedef TYPE_1__ posix_spawn_file_actions_entry_t ;


 int EBADF ;



 int F_SETFD ;
 int _close (int) ;
 int _dup2 (int,int) ;
 int _fcntl (int,int ,int ) ;
 int _open (int ,int ,int ) ;
 int errno ;

__attribute__((used)) static int
process_file_actions_entry(posix_spawn_file_actions_entry_t *fae)
{
 int fd, saved_errno;

 switch (fae->fae_action) {
 case 128:

  fd = _open(fae->fae_path, fae->fae_oflag, fae->fae_mode);
  if (fd < 0)
   return (errno);
  if (fd != fae->fae_fildes) {
   if (_dup2(fd, fae->fae_fildes) == -1) {
    saved_errno = errno;
    (void)_close(fd);
    return (saved_errno);
   }
   if (_close(fd) != 0) {
    if (errno == EBADF)
     return (EBADF);
   }
  }
  if (_fcntl(fae->fae_fildes, F_SETFD, 0) == -1)
   return (errno);
  break;
 case 129:

  if (_dup2(fae->fae_fildes, fae->fae_newfildes) == -1)
   return (errno);
  if (_fcntl(fae->fae_newfildes, F_SETFD, 0) == -1)
   return (errno);
  break;
 case 130:

  (void)_close(fae->fae_fildes);
  break;
 }
 return (0);
}
