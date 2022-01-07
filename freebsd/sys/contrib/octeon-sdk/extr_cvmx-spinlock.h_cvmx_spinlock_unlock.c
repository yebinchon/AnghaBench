
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ value; } ;
typedef TYPE_1__ cvmx_spinlock_t ;


 int CVMX_SYNCWS ;

__attribute__((used)) static inline void cvmx_spinlock_unlock(cvmx_spinlock_t *lock)
{
    CVMX_SYNCWS;
    lock->value = 0;
    CVMX_SYNCWS;
}
