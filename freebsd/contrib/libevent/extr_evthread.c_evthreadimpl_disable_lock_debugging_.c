
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ evthread_lock_debugging_enabled_ ;

void evthreadimpl_disable_lock_debugging_(void)
{
 evthread_lock_debugging_enabled_ = 0;
}
