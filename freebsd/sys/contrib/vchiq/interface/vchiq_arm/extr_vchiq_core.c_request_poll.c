
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int poll_needed; TYPE_1__* local; int * poll_services; } ;
typedef TYPE_2__ VCHIQ_STATE_T ;
struct TYPE_8__ {int localport; int poll_flags; } ;
typedef TYPE_3__ VCHIQ_SERVICE_T ;
struct TYPE_6__ {int trigger; } ;


 int atomic_cmpxchg (int *,int,int) ;
 int atomic_read (int *) ;
 int remote_event_signal_local (int *) ;
 int wmb () ;

inline void
request_poll(VCHIQ_STATE_T *state, VCHIQ_SERVICE_T *service, int poll_type)
{
 uint32_t value;

 if (service) {
  do {
   value = atomic_read(&service->poll_flags);
  } while (atomic_cmpxchg(&service->poll_flags, value,
   value | (1 << poll_type)) != value);

  do {
   value = atomic_read(&state->poll_services[
    service->localport>>5]);
  } while (atomic_cmpxchg(
   &state->poll_services[service->localport>>5],
   value, value | (1 << (service->localport & 0x1f)))
   != value);
 }

 state->poll_needed = 1;
 wmb();


 remote_event_signal_local(&state->local->trigger);
}
