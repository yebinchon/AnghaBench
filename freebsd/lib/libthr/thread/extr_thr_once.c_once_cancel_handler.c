
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
typedef TYPE_1__ pthread_once_t ;


 int INT_MAX ;
 int ONCE_IN_PROGRESS ;
 int ONCE_NEVER_DONE ;
 int _thr_umtx_wake (int *,int ,int ) ;
 scalar_t__ atomic_cmpset_rel_int (int *,int ,int ) ;
 int atomic_store_rel_int (int *,int ) ;

__attribute__((used)) static void
once_cancel_handler(void *arg)
{
 pthread_once_t *once_control;

 once_control = arg;
 if (atomic_cmpset_rel_int(&once_control->state, ONCE_IN_PROGRESS,
     ONCE_NEVER_DONE))
  return;
 atomic_store_rel_int(&once_control->state, ONCE_NEVER_DONE);
 _thr_umtx_wake(&once_control->state, INT_MAX, 0);
}
