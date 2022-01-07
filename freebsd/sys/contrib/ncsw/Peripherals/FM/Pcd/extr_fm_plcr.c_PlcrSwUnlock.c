
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
 int XX_UnlockIntrSpinlock (int ,int ) ;

__attribute__((used)) static void PlcrSwUnlock(t_Handle h_FmPcdPlcr, uint32_t intFlags)
{
    ASSERT_COND(h_FmPcdPlcr);
    XX_UnlockIntrSpinlock(((t_FmPcdPlcr*)h_FmPcdPlcr)->h_SwSpinlock, intFlags);
}
