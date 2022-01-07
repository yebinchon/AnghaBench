
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dd_flags; int dd_lock; scalar_t__ dd_loc; scalar_t__ dd_seek; int dd_fd; } ;
typedef TYPE_1__ DIR ;


 int SEEK_SET ;
 int __DTF_READALL ;
 int __DTF_SKIPREAD ;
 scalar_t__ __isthreaded ;
 int _filldir (TYPE_1__*,int) ;
 int _pthread_mutex_lock (int *) ;
 int _pthread_mutex_unlock (int *) ;
 int _reclaim_telldir (TYPE_1__*) ;
 int lseek (int ,int ,int ) ;

void
rewinddir(DIR *dirp)
{

 if (__isthreaded)
  _pthread_mutex_lock(&dirp->dd_lock);
 dirp->dd_flags &= ~__DTF_SKIPREAD;
 if (dirp->dd_flags & __DTF_READALL)
  _filldir(dirp, 0);
 else {
  (void) lseek(dirp->dd_fd, 0, SEEK_SET);
  dirp->dd_seek = 0;
 }
 dirp->dd_loc = 0;
 _reclaim_telldir(dirp);
 if (__isthreaded)
  _pthread_mutex_unlock(&dirp->dd_lock);
}
