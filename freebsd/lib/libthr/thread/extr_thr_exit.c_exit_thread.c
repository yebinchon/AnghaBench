
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int flags; int tid; int refcount; int force_exit; int cycle; int state; int * specific; int * name; } ;


 int INT_MAX ;
 int PANIC (char*,...) ;
 int PS_DEAD ;
 scalar_t__ SHOULD_REPORT_EVENT (struct pthread*,int ) ;
 int TD_DEATH ;
 int THR_FLAGS_NEED_SUSPEND ;
 scalar_t__ THR_IN_CRITICAL (struct pthread*) ;
 int THR_LOCK (struct pthread*) ;
 struct pthread* _get_curthread () ;
 int _malloc_thread_cleanup () ;
 int _thr_isthreaded () ;
 int _thr_report_death (struct pthread*) ;
 int _thr_try_gc (struct pthread*,struct pthread*) ;
 int _thr_umtx_wake (int *,int ,int ) ;
 int _thread_active_threads ;
 int _thread_cleanupspecific () ;
 int atomic_fetchadd_int (int *,int) ;
 int exit (int ) ;
 int free (int *) ;
 int thr_exit (int *) ;

__attribute__((used)) static void
exit_thread(void)
{
 struct pthread *curthread = _get_curthread();

 free(curthread->name);
 curthread->name = ((void*)0);


 if (curthread->specific != ((void*)0)) {

  _thread_cleanupspecific();
 }

 if (!_thr_isthreaded())
  exit(0);

 if (atomic_fetchadd_int(&_thread_active_threads, -1) == 1) {
  exit(0);

 }


 _malloc_thread_cleanup();

 THR_LOCK(curthread);
 curthread->state = PS_DEAD;
 if (curthread->flags & THR_FLAGS_NEED_SUSPEND) {
  curthread->cycle++;
  _thr_umtx_wake(&curthread->cycle, INT_MAX, 0);
 }
 if (!curthread->force_exit && SHOULD_REPORT_EVENT(curthread, TD_DEATH))
  _thr_report_death(curthread);




 curthread->refcount--;
 _thr_try_gc(curthread, curthread);
 thr_exit(&curthread->tid);
 PANIC("thr_exit() returned");

}
