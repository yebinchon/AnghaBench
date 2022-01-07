
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct freebsd11_dirent {int dummy; } ;
struct dirent {int dummy; } ;
struct TYPE_4__ {int dd_lock; struct freebsd11_dirent* dd_compat_de; } ;
typedef TYPE_1__ DIR ;


 int RDU_SKIP ;
 scalar_t__ __isthreaded ;
 int _pthread_mutex_lock (int *) ;
 int _pthread_mutex_unlock (int *) ;
 struct dirent* _readdir_unlocked (TYPE_1__*,int ) ;
 scalar_t__ freebsd11_cvtdirent (struct freebsd11_dirent*,struct dirent*) ;
 struct freebsd11_dirent* malloc (int) ;

struct freebsd11_dirent *
freebsd11_readdir(DIR *dirp)
{
 struct freebsd11_dirent *dstdp;
 struct dirent *dp;

 if (__isthreaded)
  _pthread_mutex_lock(&dirp->dd_lock);
 dp = _readdir_unlocked(dirp, RDU_SKIP);
 if (dp != ((void*)0)) {
  if (dirp->dd_compat_de == ((void*)0))
   dirp->dd_compat_de = malloc(sizeof(struct
       freebsd11_dirent));
  if (freebsd11_cvtdirent(dirp->dd_compat_de, dp))
   dstdp = dirp->dd_compat_de;
  else
   dstdp = ((void*)0);
 } else
  dstdp = ((void*)0);
 if (__isthreaded)
  _pthread_mutex_unlock(&dirp->dd_lock);

 return (dstdp);
}
