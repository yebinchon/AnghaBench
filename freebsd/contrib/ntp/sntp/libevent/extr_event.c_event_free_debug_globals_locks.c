
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVTHREAD_FREE_LOCK (int *,int ) ;
 int * event_debug_map_lock_ ;
 int evthreadimpl_disable_lock_debugging_ () ;

__attribute__((used)) static void
event_free_debug_globals_locks(void)
{


 if (event_debug_map_lock_ != ((void*)0)) {
  EVTHREAD_FREE_LOCK(event_debug_map_lock_, 0);
  event_debug_map_lock_ = ((void*)0);
  evthreadimpl_disable_lock_debugging_();
 }


 return;
}
