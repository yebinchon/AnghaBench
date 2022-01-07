
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ conn_state; TYPE_3__* service_quotas; int slot_mutex; int recycle_mutex; } ;
typedef TYPE_1__ VCHIQ_STATE_T ;
struct TYPE_6__ {int closing; size_t localport; TYPE_1__* state; } ;
typedef TYPE_2__ VCHIQ_SERVICE_T ;
struct TYPE_7__ {int quota_event; } ;
typedef TYPE_3__ VCHIQ_SERVICE_QUOTA_T ;


 scalar_t__ VCHIQ_CONNSTATE_PAUSE_SENT ;
 int lmutex_lock (int *) ;
 int lmutex_unlock (int *) ;
 int up (int *) ;

__attribute__((used)) static void
mark_service_closing_internal(VCHIQ_SERVICE_T *service, int sh_thread)
{
 VCHIQ_STATE_T *state = service->state;
 VCHIQ_SERVICE_QUOTA_T *service_quota;

 service->closing = 1;


 lmutex_lock(&state->recycle_mutex);
 lmutex_unlock(&state->recycle_mutex);
 if (!sh_thread || (state->conn_state != VCHIQ_CONNSTATE_PAUSE_SENT)) {




  lmutex_lock(&state->slot_mutex);
  lmutex_unlock(&state->slot_mutex);
 }


 service_quota = &state->service_quotas[service->localport];
 up(&service_quota->quota_event);
}
