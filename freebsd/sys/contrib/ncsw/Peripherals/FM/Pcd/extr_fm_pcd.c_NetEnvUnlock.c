
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_2__ {int h_Spinlock; } ;
typedef TYPE_1__ t_FmPcdNetEnv ;


 int ASSERT_COND (scalar_t__) ;
 int XX_UnlockIntrSpinlock (int ,int ) ;

__attribute__((used)) static void NetEnvUnlock(t_Handle h_NetEnv, uint32_t intFlags)
{
    ASSERT_COND(h_NetEnv);
    XX_UnlockIntrSpinlock(((t_FmPcdNetEnv*)h_NetEnv)->h_Spinlock, intFlags);
}
