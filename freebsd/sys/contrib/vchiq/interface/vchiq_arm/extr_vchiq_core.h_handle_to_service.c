
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** services; } ;
typedef TYPE_1__ VCHIQ_STATE_T ;
typedef int VCHIQ_SERVICE_T ;
typedef int VCHIQ_SERVICE_HANDLE_T ;


 int VCHIQ_MAX_SERVICES ;
 int VCHIQ_MAX_STATES ;
 TYPE_1__** vchiq_states ;

__attribute__((used)) static inline VCHIQ_SERVICE_T *
handle_to_service(VCHIQ_SERVICE_HANDLE_T handle)
{
 VCHIQ_STATE_T *state = vchiq_states[(handle / VCHIQ_MAX_SERVICES) &
  (VCHIQ_MAX_STATES - 1)];
 if (!state)
  return ((void*)0);

 return state->services[handle & (VCHIQ_MAX_SERVICES - 1)];
}
