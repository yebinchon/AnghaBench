
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread_mutex {int dummy; } ;
struct pthread {int dummy; } ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ PMUTEX_OWNER_ID (struct pthread_mutex const*) ;
 struct pthread_mutex const* THR_MUTEX_DESTROYED ;
 scalar_t__ TID (struct pthread*) ;
 scalar_t__ __predict_false (int) ;

int
_mutex_owned(struct pthread *curthread, const struct pthread_mutex *mp)
{

 if (__predict_false(mp <= THR_MUTEX_DESTROYED)) {
  if (mp == THR_MUTEX_DESTROYED)
   return (EINVAL);
  return (EPERM);
 }
 if (PMUTEX_OWNER_ID(mp) != TID(curthread))
  return (EPERM);
 return (0);
}
