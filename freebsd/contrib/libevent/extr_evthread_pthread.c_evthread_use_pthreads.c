
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evthread_lock_callbacks {int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct evthread_condition_callbacks {int member_4; int member_3; int member_2; int member_1; int member_0; } ;


 int EVTHREAD_CONDITION_API_VERSION ;
 int EVTHREAD_LOCKTYPE_RECURSIVE ;
 int EVTHREAD_LOCK_API_VERSION ;
 int PTHREAD_MUTEX_RECURSIVE ;
 int attr_recursive ;
 int evthread_posix_cond_alloc ;
 int evthread_posix_cond_free ;
 int evthread_posix_cond_signal ;
 int evthread_posix_cond_wait ;
 int evthread_posix_get_id ;
 int evthread_posix_lock ;
 int evthread_posix_lock_alloc ;
 int evthread_posix_lock_free ;
 int evthread_posix_unlock ;
 int evthread_set_condition_callbacks (struct evthread_condition_callbacks*) ;
 int evthread_set_id_callback (int ) ;
 int evthread_set_lock_callbacks (struct evthread_lock_callbacks*) ;
 scalar_t__ pthread_mutexattr_init (int *) ;
 scalar_t__ pthread_mutexattr_settype (int *,int ) ;

int
evthread_use_pthreads(void)
{
 struct evthread_lock_callbacks cbs = {
  EVTHREAD_LOCK_API_VERSION,
  EVTHREAD_LOCKTYPE_RECURSIVE,
  evthread_posix_lock_alloc,
  evthread_posix_lock_free,
  evthread_posix_lock,
  evthread_posix_unlock
 };
 struct evthread_condition_callbacks cond_cbs = {
  EVTHREAD_CONDITION_API_VERSION,
  evthread_posix_cond_alloc,
  evthread_posix_cond_free,
  evthread_posix_cond_signal,
  evthread_posix_cond_wait
 };

 if (pthread_mutexattr_init(&attr_recursive))
  return -1;
 if (pthread_mutexattr_settype(&attr_recursive, PTHREAD_MUTEX_RECURSIVE))
  return -1;

 evthread_set_lock_callbacks(&cbs);
 evthread_set_condition_callbacks(&cond_cbs);
 evthread_set_id_callback(evthread_posix_get_id);
 return 0;
}
