
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* local; } ;
typedef TYPE_2__ VCHIQ_STATE_T ;
struct TYPE_4__ {int recycle; int trigger; int sync_release; int sync_trigger; } ;


 int remote_event_poll (int *) ;

void
remote_event_pollall(VCHIQ_STATE_T *state)
{
 remote_event_poll(&state->local->sync_trigger);
 remote_event_poll(&state->local->sync_release);
 remote_event_poll(&state->local->trigger);
 remote_event_poll(&state->local->recycle);
}
