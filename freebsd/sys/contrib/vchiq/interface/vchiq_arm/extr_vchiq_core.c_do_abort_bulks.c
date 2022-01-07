
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_5__ {int bulk_rx; int bulk_tx; int bulk_mutex; } ;
typedef TYPE_1__ VCHIQ_SERVICE_T ;


 scalar_t__ VCHIQ_SUCCESS ;
 int abort_outstanding_bulks (TYPE_1__*,int *) ;
 scalar_t__ lmutex_lock_interruptible (int *) ;
 int lmutex_unlock (int *) ;
 scalar_t__ notify_bulks (TYPE_1__*,int *,int ) ;

__attribute__((used)) static int
do_abort_bulks(VCHIQ_SERVICE_T *service)
{
 VCHIQ_STATUS_T status;


 if (lmutex_lock_interruptible(&service->bulk_mutex) != 0)
  return 0;
 abort_outstanding_bulks(service, &service->bulk_tx);
 abort_outstanding_bulks(service, &service->bulk_rx);
 lmutex_unlock(&service->bulk_mutex);

 status = notify_bulks(service, &service->bulk_tx, 0 );
 if (status == VCHIQ_SUCCESS)
  status = notify_bulks(service, &service->bulk_rx,
   0 );
 return (status == VCHIQ_SUCCESS);
}
