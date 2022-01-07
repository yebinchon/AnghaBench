
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evthread_win32_cond {int event; int lock; } ;


 int CloseHandle (int ) ;
 int DeleteCriticalSection (int *) ;
 int mm_free (struct evthread_win32_cond*) ;

__attribute__((used)) static void
evthread_win32_cond_free(void *cond_)
{
 struct evthread_win32_cond *cond = cond_;
 DeleteCriticalSection(&cond->lock);
 CloseHandle(cond->event);
 mm_free(cond);
}
