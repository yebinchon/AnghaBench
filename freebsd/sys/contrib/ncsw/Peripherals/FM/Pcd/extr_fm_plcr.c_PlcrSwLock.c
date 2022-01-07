
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_2__ {int h_SwSpinlock; } ;
typedef TYPE_1__ t_FmPcdPlcr ;


 int ASSERT_COND (scalar_t__) ;
 int XX_LockIntrSpinlock (int ) ;

__attribute__((used)) static uint32_t PlcrSwLock(t_Handle h_FmPcdPlcr)
{
    ASSERT_COND(h_FmPcdPlcr);
    return XX_LockIntrSpinlock(((t_FmPcdPlcr*)h_FmPcdPlcr)->h_SwSpinlock);
}
