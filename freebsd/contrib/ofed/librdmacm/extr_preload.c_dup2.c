
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd_info {scalar_t__ state; int dupfd; int refcnt; int type; int fd; } ;
struct TYPE_2__ {int (* dup2 ) (int,int) ;} ;


 int EBUSY ;
 int ENOMEM ;
 int ERR (int ) ;
 int atomic_fetch_add (int *,int) ;
 int atomic_load (int *) ;
 int atomic_store (int *,int) ;
 struct fd_info* calloc (int,int) ;
 int close (int) ;
 scalar_t__ fd_fork_active ;
 scalar_t__ fd_fork_passive ;
 int fork_active (int) ;
 int fork_passive (int) ;
 int idm ;
 struct fd_info* idm_lookup (int *,int) ;
 int idm_set (int *,int,struct fd_info*) ;
 int init_preload () ;
 int mut ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_1__ real ;
 int stub1 (int,int) ;

int dup2(int oldfd, int newfd)
{
 struct fd_info *oldfdi, *newfdi;
 int ret;

 init_preload();
 oldfdi = idm_lookup(&idm, oldfd);
 if (oldfdi) {
  if (oldfdi->state == fd_fork_passive)
   fork_passive(oldfd);
  else if (oldfdi->state == fd_fork_active)
   fork_active(oldfd);
 }

 newfdi = idm_lookup(&idm, newfd);
 if (newfdi) {

  if (atomic_load(&newfdi->refcnt) > 1)
   return ERR(EBUSY);
  close(newfd);
 }

 ret = real.dup2(oldfd, newfd);
 if (!oldfdi || ret != newfd)
  return ret;

 newfdi = calloc(1, sizeof(*newfdi));
 if (!newfdi) {
  close(newfd);
  return ERR(ENOMEM);
 }

 pthread_mutex_lock(&mut);
 idm_set(&idm, newfd, newfdi);
 pthread_mutex_unlock(&mut);

 newfdi->fd = oldfdi->fd;
 newfdi->type = oldfdi->type;
 if (oldfdi->dupfd != -1) {
  newfdi->dupfd = oldfdi->dupfd;
  oldfdi = idm_lookup(&idm, oldfdi->dupfd);
 } else {
  newfdi->dupfd = oldfd;
 }
 atomic_store(&newfdi->refcnt, 1);
 atomic_fetch_add(&oldfdi->refcnt, 1);
 return newfd;
}
