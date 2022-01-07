
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void CRITICAL_SECTION ;


 scalar_t__ InitializeCriticalSectionAndSpinCount (void*,int ) ;
 int SPIN_COUNT ;
 int mm_free (void*) ;
 void* mm_malloc (int) ;

__attribute__((used)) static void *
evthread_win32_lock_create(unsigned locktype)
{
 CRITICAL_SECTION *lock = mm_malloc(sizeof(CRITICAL_SECTION));
 if (!lock)
  return ((void*)0);
 if (InitializeCriticalSectionAndSpinCount(lock, SPIN_COUNT) == 0) {
  mm_free(lock);
  return ((void*)0);
 }
 return lock;
}
