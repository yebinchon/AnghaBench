
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int h_Spinlock; } ;
typedef TYPE_1__ t_FmPcdLock ;


 int ASSERT_COND (TYPE_1__*) ;
 int XX_LockIntrSpinlock (int ) ;

__attribute__((used)) static __inline__ uint32_t FmPcdLockSpinlock(t_FmPcdLock *p_Lock)
{
    ASSERT_COND(p_Lock);
    return XX_LockIntrSpinlock(p_Lock->h_Spinlock);
}
