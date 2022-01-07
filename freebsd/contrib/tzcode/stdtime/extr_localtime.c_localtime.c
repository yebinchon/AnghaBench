
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 int _RWLOCK_RDLOCK (int *) ;
 int _RWLOCK_UNLOCK (int *) ;
 scalar_t__ __isthreaded ;
 struct tm* _pthread_getspecific (int ) ;
 int _pthread_once (int *,int ) ;
 int _pthread_setspecific (int ,struct tm*) ;
 scalar_t__ errno ;
 int lcl_rwlock ;
 struct tm* localsub (int const* const,long,struct tm*) ;
 int localtime_key ;
 scalar_t__ localtime_key_error ;
 int localtime_key_init ;
 int localtime_once ;
 scalar_t__ malloc (int) ;
 struct tm tm ;
 int tzset_basic (int) ;

struct tm *
localtime(const time_t *const timep)
{
 struct tm *p_tm;

 if (__isthreaded != 0) {
  _pthread_once(&localtime_once, localtime_key_init);
  if (localtime_key_error != 0) {
   errno = localtime_key_error;
   return(((void*)0));
  }
  p_tm = _pthread_getspecific(localtime_key);
  if (p_tm == ((void*)0)) {
   if ((p_tm = (struct tm *)malloc(sizeof(struct tm)))
       == ((void*)0))
    return(((void*)0));
   _pthread_setspecific(localtime_key, p_tm);
  }
  _RWLOCK_RDLOCK(&lcl_rwlock);
  tzset_basic(1);
  p_tm = localsub(timep, 0L, p_tm);
  _RWLOCK_UNLOCK(&lcl_rwlock);
 } else {
  tzset_basic(0);
  p_tm = localsub(timep, 0L, &tm);
 }
 return(p_tm);
}
