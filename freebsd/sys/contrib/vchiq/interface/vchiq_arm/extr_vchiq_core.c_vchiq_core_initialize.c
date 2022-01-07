
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bulk_waiter_spinlock ;
 int quota_spinlock ;
 int service_spinlock ;
 int spin_lock_init (int *) ;

void
vchiq_core_initialize(void)
{
 spin_lock_init(&service_spinlock);
 spin_lock_init(&bulk_waiter_spinlock);
 spin_lock_init(&quota_spinlock);
}
