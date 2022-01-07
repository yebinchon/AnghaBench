
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_2__ {int p_Lock; } ;
typedef TYPE_1__ t_FmPcdPlcrProfile ;


 int ASSERT_COND (scalar_t__) ;
 int FmPcdUnlockSpinlock (int ,int ) ;

__attribute__((used)) static void PlcrProfileUnlock(t_Handle h_Profile, uint32_t intFlags)
{
    ASSERT_COND(h_Profile);
    FmPcdUnlockSpinlock(((t_FmPcdPlcrProfile *)h_Profile)->p_Lock, intFlags);
}
