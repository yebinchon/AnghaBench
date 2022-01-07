
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int flag; int h_Spinlock; } ;
typedef TYPE_1__ t_FmPcdLock ;


 int ASSERT_COND (TYPE_1__*) ;
 int FALSE ;
 int TRUE ;
 int XX_LockIntrSpinlock (int ) ;
 int XX_UnlockIntrSpinlock (int ,int ) ;

__attribute__((used)) static __inline__ bool FmPcdLockTryLock(t_FmPcdLock *p_Lock)
{
    uint32_t intFlags;

    ASSERT_COND(p_Lock);
    intFlags = XX_LockIntrSpinlock(p_Lock->h_Spinlock);
    if (p_Lock->flag)
    {
        XX_UnlockIntrSpinlock(p_Lock->h_Spinlock, intFlags);
        return FALSE;
    }
    p_Lock->flag = TRUE;
    XX_UnlockIntrSpinlock(p_Lock->h_Spinlock, intFlags);
    return TRUE;
}
