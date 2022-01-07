
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lockr_t ;
typedef int SCR ;


 scalar_t__ EAGAIN ;
 scalar_t__ EWOULDBLOCK ;
 int F_SETFD ;
 int LOCK_EX ;
 int LOCK_FAILED ;
 int LOCK_NB ;
 int LOCK_SUCCESS ;
 int LOCK_UNAVAIL ;
 int O_ISSET (int *,int ) ;
 int O_LOCKFILES ;
 scalar_t__ errno ;
 int fcntl (int,int ,int) ;
 int flock (int,int) ;

lockr_t
file_lock(
 SCR *sp,
 char *name,
 int fd,
 int iswrite)
{
 if (!O_ISSET(sp, O_LOCKFILES))
  return (LOCK_SUCCESS);
 errno = 0;
 if (!flock(fd, LOCK_EX | LOCK_NB)) {
  fcntl(fd, F_SETFD, 1);
  return (LOCK_SUCCESS);
 }
 return (errno == EAGAIN



     ? LOCK_UNAVAIL : LOCK_FAILED);
}
