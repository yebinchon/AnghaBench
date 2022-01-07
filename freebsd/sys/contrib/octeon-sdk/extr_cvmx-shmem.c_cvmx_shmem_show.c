
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 int __CHECK_APP_SMDR ;
 int __cvmx_shmem_smdr_display_dscptr ;
 TYPE_1__* __smdr ;
 int __smdr_iterator (int ,int *) ;
 int cvmx_dprintf (char*) ;
 int cvmx_spinlock_lock (int *) ;
 int cvmx_spinlock_unlock (int *) ;

void cvmx_shmem_show(void)
{
    __CHECK_APP_SMDR;
}
