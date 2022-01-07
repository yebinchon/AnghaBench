
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
 int XX_LockIntrSpinlock (int ) ;

__attribute__((used)) static uint32_t KgHwLock(t_Handle h_FmPcdKg)
{
    ASSERT_COND(h_FmPcdKg);
    return XX_LockIntrSpinlock(((t_FmPcdKg *)h_FmPcdKg)->h_HwSpinlock);
}
