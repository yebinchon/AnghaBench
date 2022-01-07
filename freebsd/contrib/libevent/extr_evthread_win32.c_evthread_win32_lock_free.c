
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CRITICAL_SECTION ;


 int DeleteCriticalSection (int *) ;
 int mm_free (int *) ;

__attribute__((used)) static void
evthread_win32_lock_free(void *lock_, unsigned locktype)
{
 CRITICAL_SECTION *lock = lock_;
 DeleteCriticalSection(lock);
 mm_free(lock);
}
