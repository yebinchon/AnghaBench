
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
 int XX_LockIntrSpinlock (int ) ;

__attribute__((used)) static uint32_t NetEnvLock(t_Handle h_NetEnv)
{
    ASSERT_COND(h_NetEnv);
    return XX_LockIntrSpinlock(((t_FmPcdNetEnv*)h_NetEnv)->h_Spinlock);
}
