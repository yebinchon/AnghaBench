
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_2__ {int h_HwSpinlock; } ;
typedef TYPE_1__ t_FmPcdKg ;


 int ASSERT_COND (scalar_t__) ;
 int XX_UnlockIntrSpinlock (int ,int ) ;

__attribute__((used)) static void KgHwUnlock(t_Handle h_FmPcdKg, uint32_t intFlags)
{
    ASSERT_COND(h_FmPcdKg);
    XX_UnlockIntrSpinlock(((t_FmPcdKg *)h_FmPcdKg)->h_HwSpinlock, intFlags);
}
