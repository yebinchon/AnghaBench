
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 int _RWLOCK_RDLOCK (int *) ;
 int _RWLOCK_UNLOCK (int *) ;
 int lcl_rwlock ;
 int localsub ;
 int time1 (struct tm* const,int ,long) ;
 int tzset_basic (int) ;

time_t
mktime(struct tm *const tmp)
{
 time_t mktime_return_value;
 _RWLOCK_RDLOCK(&lcl_rwlock);
 tzset_basic(1);
 mktime_return_value = time1(tmp, localsub, 0L);
 _RWLOCK_UNLOCK(&lcl_rwlock);
 return(mktime_return_value);
}
