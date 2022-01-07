
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CRITICAL_SECTION ;


 int LeaveCriticalSection (int *) ;

__attribute__((used)) static int
evthread_win32_unlock(unsigned mode, void *lock_)
{
 CRITICAL_SECTION *lock = lock_;
 LeaveCriticalSection(lock);
 return 0;
}
