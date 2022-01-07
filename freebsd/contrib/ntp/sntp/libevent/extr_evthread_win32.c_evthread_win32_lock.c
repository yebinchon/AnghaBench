
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CRITICAL_SECTION ;


 unsigned int EVTHREAD_TRY ;
 int EnterCriticalSection (int *) ;
 int TryEnterCriticalSection (int *) ;

__attribute__((used)) static int
evthread_win32_lock(unsigned mode, void *lock_)
{
 CRITICAL_SECTION *lock = lock_;
 if ((mode & EVTHREAD_TRY)) {
  return ! TryEnterCriticalSection(lock);
 } else {
  EnterCriticalSection(lock);
  return 0;
 }
}
