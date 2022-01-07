
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ref_count; } ;
typedef TYPE_1__ VCHIQ_SERVICE_T ;


 int BUG_ON (int) ;
 int service_spinlock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
lock_service(VCHIQ_SERVICE_T *service)
{
 spin_lock(&service_spinlock);
 BUG_ON(!service || (service->ref_count == 0));
 if (service)
  service->ref_count++;
 spin_unlock(&service_spinlock);
}
