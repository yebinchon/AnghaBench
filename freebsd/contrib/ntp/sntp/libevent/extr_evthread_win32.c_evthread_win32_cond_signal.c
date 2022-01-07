
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evthread_win32_cond {int lock; int event; int generation; int n_to_wake; int n_waiting; } ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int SetEvent (int ) ;

__attribute__((used)) static int
evthread_win32_cond_signal(void *cond_, int broadcast)
{
 struct evthread_win32_cond *cond = cond_;
 EnterCriticalSection(&cond->lock);
 if (broadcast)
  cond->n_to_wake = cond->n_waiting;
 else
  ++cond->n_to_wake;
 cond->generation++;
 SetEvent(cond->event);
 LeaveCriticalSection(&cond->lock);
 return 0;
}
