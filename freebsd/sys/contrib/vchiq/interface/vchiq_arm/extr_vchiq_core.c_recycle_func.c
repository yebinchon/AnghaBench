
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* local; } ;
typedef TYPE_1__ VCHIQ_STATE_T ;
struct TYPE_5__ {int recycle; } ;
typedef TYPE_2__ VCHIQ_SHARED_STATE_T ;


 int process_free_queue (TYPE_1__*) ;
 int remote_event_wait (int *) ;

int
recycle_func(void *v)
{
 VCHIQ_STATE_T *state = (VCHIQ_STATE_T *) v;
 VCHIQ_SHARED_STATE_T *local = state->local;

 while (1) {
  remote_event_wait(&local->recycle);

  process_free_queue(state);
 }
 return 0;
}
