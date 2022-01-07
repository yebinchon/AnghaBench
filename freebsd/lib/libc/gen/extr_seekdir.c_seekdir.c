
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dd_lock; } ;
typedef TYPE_1__ DIR ;


 scalar_t__ __isthreaded ;
 int _pthread_mutex_lock (int *) ;
 int _pthread_mutex_unlock (int *) ;
 int _seekdir (TYPE_1__*,long) ;

void
seekdir(DIR *dirp, long loc)
{
 if (__isthreaded)
  _pthread_mutex_lock(&dirp->dd_lock);
 _seekdir(dirp, loc);
 if (__isthreaded)
  _pthread_mutex_unlock(&dirp->dd_lock);
}
