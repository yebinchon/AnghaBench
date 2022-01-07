
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ** services; } ;
typedef TYPE_2__ VCHIQ_STATE_T ;
struct TYPE_6__ {int userdata; } ;
struct TYPE_8__ {scalar_t__ ref_count; scalar_t__ srvstate; size_t localport; TYPE_1__ base; int (* userdata_term ) (int ) ;int bulk_mutex; int bulk_remove_event; int remove_event; TYPE_2__* state; } ;
typedef TYPE_3__ VCHIQ_SERVICE_T ;


 int BUG_ON (int) ;
 scalar_t__ VCHIQ_SRVSTATE_FREE ;
 int _sema_destroy (int *) ;
 int kfree (TYPE_3__*) ;
 int lmutex_destroy (int *) ;
 int service_spinlock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int ) ;

void
unlock_service(VCHIQ_SERVICE_T *service)
{
 VCHIQ_STATE_T *state = service->state;
 spin_lock(&service_spinlock);
 BUG_ON(!service || (service->ref_count == 0));
 if (service && service->ref_count) {
  service->ref_count--;
  if (!service->ref_count) {
   BUG_ON(service->srvstate != VCHIQ_SRVSTATE_FREE);
   state->services[service->localport] = ((void*)0);

   _sema_destroy(&service->remove_event);
   _sema_destroy(&service->bulk_remove_event);
   lmutex_destroy(&service->bulk_mutex);
  } else
   service = ((void*)0);
 }
 spin_unlock(&service_spinlock);

 if (service && service->userdata_term)
  service->userdata_term(service->base.userdata);

 kfree(service);
}
