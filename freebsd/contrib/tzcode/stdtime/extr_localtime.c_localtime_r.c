
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 int _RWLOCK_RDLOCK (int *) ;
 int _RWLOCK_UNLOCK (int *) ;
 int lcl_rwlock ;
 struct tm* localsub (int const* const,long,struct tm*) ;
 int tzset_basic (int) ;

struct tm *
localtime_r(const time_t *const timep, struct tm *tmp)
{
 _RWLOCK_RDLOCK(&lcl_rwlock);
 tzset_basic(1);
 tmp = localsub(timep, 0L, tmp);
 _RWLOCK_UNLOCK(&lcl_rwlock);
 return tmp;
}
