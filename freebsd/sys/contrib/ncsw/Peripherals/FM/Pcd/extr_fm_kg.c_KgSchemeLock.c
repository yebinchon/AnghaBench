
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_2__ {int p_Lock; } ;
typedef TYPE_1__ t_FmPcdKgScheme ;


 int ASSERT_COND (scalar_t__) ;
 int FmPcdLockSpinlock (int ) ;

__attribute__((used)) static uint32_t KgSchemeLock(t_Handle h_Scheme)
{
    ASSERT_COND(h_Scheme);
    return FmPcdLockSpinlock(((t_FmPcdKgScheme *)h_Scheme)->p_Lock);
}
