
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int h_Spinlock; } ;
typedef TYPE_1__ t_FmPcdLock ;


 int ASSERT_COND (TYPE_1__*) ;
 int XX_UnlockIntrSpinlock (int ,int ) ;

__attribute__((used)) static __inline__ void FmPcdUnlockSpinlock(t_FmPcdLock *p_Lock, uint32_t flags)
{
    ASSERT_COND(p_Lock);
    XX_UnlockIntrSpinlock(p_Lock->h_Spinlock, flags);
}
