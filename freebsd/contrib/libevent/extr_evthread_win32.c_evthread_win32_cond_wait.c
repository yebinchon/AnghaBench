
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct evthread_win32_cond {int generation; scalar_t__ n_to_wake; int lock; int event; int n_waiting; } ;
typedef scalar_t__ DWORD ;
typedef int CRITICAL_SECTION ;


 int EnterCriticalSection (int *) ;
 scalar_t__ GetTickCount () ;
 scalar_t__ INFINITE ;
 int LeaveCriticalSection (int *) ;
 int ResetEvent (int ) ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WAIT_TIMEOUT ;
 scalar_t__ WaitForSingleObject (int ,scalar_t__) ;
 scalar_t__ evutil_tv_to_msec_ (struct timeval const*) ;

__attribute__((used)) static int
evthread_win32_cond_wait(void *cond_, void *lock_, const struct timeval *tv)
{
 struct evthread_win32_cond *cond = cond_;
 CRITICAL_SECTION *lock = lock_;
 int generation_at_start;
 int waiting = 1;
 int result = -1;
 DWORD ms = INFINITE, ms_orig = INFINITE, startTime, endTime;
 if (tv)
  ms_orig = ms = evutil_tv_to_msec_(tv);

 EnterCriticalSection(&cond->lock);
 ++cond->n_waiting;
 generation_at_start = cond->generation;
 LeaveCriticalSection(&cond->lock);

 LeaveCriticalSection(lock);

 startTime = GetTickCount();
 do {
  DWORD res;
  res = WaitForSingleObject(cond->event, ms);
  EnterCriticalSection(&cond->lock);
  if (cond->n_to_wake &&
      cond->generation != generation_at_start) {
   --cond->n_to_wake;
   --cond->n_waiting;
   result = 0;
   waiting = 0;
   goto out;
  } else if (res != WAIT_OBJECT_0) {
   result = (res==WAIT_TIMEOUT) ? 1 : -1;
   --cond->n_waiting;
   waiting = 0;
   goto out;
  } else if (ms != INFINITE) {
   endTime = GetTickCount();
   if (startTime + ms_orig <= endTime) {
    result = 1;
    --cond->n_waiting;
    waiting = 0;
    goto out;
   } else {
    ms = startTime + ms_orig - endTime;
   }
  }

  if (cond->n_to_wake == 0) {


   ResetEvent(cond->event);
  }
 out:
  LeaveCriticalSection(&cond->lock);
 } while (waiting);

 EnterCriticalSection(lock);

 EnterCriticalSection(&cond->lock);
 if (!cond->n_waiting)
  ResetEvent(cond->event);
 LeaveCriticalSection(&cond->lock);

 return result;
}
