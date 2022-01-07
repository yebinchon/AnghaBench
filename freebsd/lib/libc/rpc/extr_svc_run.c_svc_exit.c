
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD_ZERO (int *) ;
 int rwlock_unlock (int *) ;
 int rwlock_wrlock (int *) ;
 int svc_fd_lock ;
 int svc_fdset ;

void
svc_exit(void)
{
 rwlock_wrlock(&svc_fd_lock);
 FD_ZERO(&svc_fdset);
 rwlock_unlock(&svc_fd_lock);
}
