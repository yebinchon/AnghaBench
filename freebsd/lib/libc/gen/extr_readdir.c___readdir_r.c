
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct dirent {int dummy; } ;
struct TYPE_4__ {int dd_lock; } ;
typedef TYPE_1__ DIR ;


 int RDU_SHORT ;
 int RDU_SKIP ;
 int _GENERIC_DIRSIZ (struct dirent*) ;
 scalar_t__ __isthreaded ;
 int _pthread_mutex_lock (int *) ;
 int _pthread_mutex_unlock (int *) ;
 struct dirent* _readdir_unlocked (TYPE_1__*,int) ;
 int errno ;
 int memcpy (struct dirent*,struct dirent*,int ) ;

int
__readdir_r(DIR *dirp, struct dirent *entry, struct dirent **result)
{
 struct dirent *dp;
 int saved_errno;

 saved_errno = errno;
 errno = 0;
 if (__isthreaded)
  _pthread_mutex_lock(&dirp->dd_lock);
 dp = _readdir_unlocked(dirp, RDU_SKIP | RDU_SHORT);
 if (dp != ((void*)0))
  memcpy(entry, dp, _GENERIC_DIRSIZ(dp));
 if (__isthreaded)
  _pthread_mutex_unlock(&dirp->dd_lock);

 if (errno != 0) {
  if (dp == ((void*)0))
   return (errno);
 } else
  errno = saved_errno;

 if (dp != ((void*)0))
  *result = entry;
 else
  *result = ((void*)0);

 return (0);
}
