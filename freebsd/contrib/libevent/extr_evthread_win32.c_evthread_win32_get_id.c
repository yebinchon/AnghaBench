
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GetCurrentThreadId () ;

__attribute__((used)) static unsigned long
evthread_win32_get_id(void)
{
 return (unsigned long) GetCurrentThreadId();
}
