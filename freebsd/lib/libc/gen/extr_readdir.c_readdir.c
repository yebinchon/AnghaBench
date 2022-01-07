
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct dirent {int dummy; } ;
struct TYPE_4__ {int dd_lock; } ;
typedef TYPE_1__ DIR ;


 int RDU_SKIP ;
 scalar_t__ __isthreaded ;
 int _pthread_mutex_lock (int *) ;
 int _pthread_mutex_unlock (int *) ;
 struct dirent* _readdir_unlocked (TYPE_1__*,int ) ;

struct dirent *
readdir(DIR *dirp)
{
 struct dirent *dp;

 if (__isthreaded)
  _pthread_mutex_lock(&dirp->dd_lock);
 dp = _readdir_unlocked(dirp, RDU_SKIP);
 if (__isthreaded)
  _pthread_mutex_unlock(&dirp->dd_lock);
 return (dp);
}
