
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ value; } ;
typedef TYPE_1__ cvmx_spinlock_t ;


 scalar_t__ CVMX_SPINLOCK_UNLOCKED_VAL ;

__attribute__((used)) static inline int cvmx_spinlock_locked(cvmx_spinlock_t *lock)
{
    return (lock->value != CVMX_SPINLOCK_UNLOCKED_VAL);
}
