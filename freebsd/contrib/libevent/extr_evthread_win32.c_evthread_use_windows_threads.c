
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evthread_lock_callbacks {int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct evthread_condition_callbacks {int member_4; int member_3; int member_2; int member_1; int member_0; } ;


 int EVTHREAD_CONDITION_API_VERSION ;
 int EVTHREAD_LOCKTYPE_RECURSIVE ;
 int EVTHREAD_LOCK_API_VERSION ;
 int evthread_set_condition_callbacks (struct evthread_condition_callbacks*) ;
 int evthread_set_id_callback (int ) ;
 int evthread_set_lock_callbacks (struct evthread_lock_callbacks*) ;
 int evthread_win32_cond_alloc ;
 int evthread_win32_cond_free ;
 int evthread_win32_cond_signal ;
 int evthread_win32_cond_wait ;
 int evthread_win32_condvar_alloc ;
 int evthread_win32_condvar_free ;
 scalar_t__ evthread_win32_condvar_init () ;
 int evthread_win32_condvar_signal ;
 int evthread_win32_condvar_wait ;
 int evthread_win32_get_id ;
 int evthread_win32_lock ;
 int evthread_win32_lock_create ;
 int evthread_win32_lock_free ;
 int evthread_win32_unlock ;

int
evthread_use_windows_threads(void)
{
 struct evthread_lock_callbacks cbs = {
  EVTHREAD_LOCK_API_VERSION,
  EVTHREAD_LOCKTYPE_RECURSIVE,
  evthread_win32_lock_create,
  evthread_win32_lock_free,
  evthread_win32_lock,
  evthread_win32_unlock
 };


 struct evthread_condition_callbacks cond_cbs = {
  EVTHREAD_CONDITION_API_VERSION,
  evthread_win32_cond_alloc,
  evthread_win32_cond_free,
  evthread_win32_cond_signal,
  evthread_win32_cond_wait
 };
 evthread_set_lock_callbacks(&cbs);
 evthread_set_id_callback(evthread_win32_get_id);






 evthread_set_condition_callbacks(&cond_cbs);

 return 0;
}
