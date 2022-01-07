
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dd_fd; void* dd_compat_de; int dd_lock; scalar_t__ dd_buf; scalar_t__ dd_loc; } ;
typedef TYPE_1__ DIR ;


 scalar_t__ __isthreaded ;
 int _pthread_mutex_destroy (int *) ;
 int _pthread_mutex_lock (int *) ;
 int _pthread_mutex_unlock (int *) ;
 int _reclaim_telldir (TYPE_1__*) ;
 int free (void*) ;

int
fdclosedir(DIR *dirp)
{
 int fd;

 if (__isthreaded)
  _pthread_mutex_lock(&dirp->dd_lock);
 fd = dirp->dd_fd;
 dirp->dd_fd = -1;
 dirp->dd_loc = 0;
 free((void *)dirp->dd_buf);
 free(dirp->dd_compat_de);
 _reclaim_telldir(dirp);
 if (__isthreaded) {
  _pthread_mutex_unlock(&dirp->dd_lock);
  _pthread_mutex_destroy(&dirp->dd_lock);
 }
 free((void *)dirp);
 return (fd);
}
