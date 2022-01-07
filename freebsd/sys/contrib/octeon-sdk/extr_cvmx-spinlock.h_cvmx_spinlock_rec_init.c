
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
typedef TYPE_1__ cvmx_spinlock_rec_t ;


 int CVMX_SPINLOCK_UNLOCKED_VAL ;

__attribute__((used)) static inline void cvmx_spinlock_rec_init(cvmx_spinlock_rec_t *lock)
{
    lock->value = CVMX_SPINLOCK_UNLOCKED_VAL;
}
