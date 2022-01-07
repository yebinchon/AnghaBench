
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_2__ {int h_Spinlock; int owner; } ;
typedef TYPE_1__ t_FmPcdManip ;


 int ASSERT_COND (int ) ;
 int XX_LockIntrSpinlock (int ) ;
 int XX_UnlockIntrSpinlock (int ,int ) ;

void FmPcdManipUpdateOwner(t_Handle h_Manip, bool add)
{

    uint32_t intFlags;

    intFlags = XX_LockIntrSpinlock(((t_FmPcdManip *)h_Manip)->h_Spinlock);
    if (add)
        ((t_FmPcdManip *)h_Manip)->owner++;
    else
    {
        ASSERT_COND(((t_FmPcdManip *)h_Manip)->owner);
        ((t_FmPcdManip *)h_Manip)->owner--;
    }
    XX_UnlockIntrSpinlock(((t_FmPcdManip *)h_Manip)->h_Spinlock, intFlags);
}
