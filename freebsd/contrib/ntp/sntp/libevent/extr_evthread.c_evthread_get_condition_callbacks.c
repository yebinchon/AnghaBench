
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evthread_condition_callbacks {int dummy; } ;


 struct evthread_condition_callbacks evthread_cond_fns_ ;
 scalar_t__ evthread_lock_debugging_enabled_ ;
 struct evthread_condition_callbacks original_cond_fns_ ;

struct evthread_condition_callbacks *evthread_get_condition_callbacks()
{
 return evthread_lock_debugging_enabled_
     ? &original_cond_fns_ : &evthread_cond_fns_;
}
