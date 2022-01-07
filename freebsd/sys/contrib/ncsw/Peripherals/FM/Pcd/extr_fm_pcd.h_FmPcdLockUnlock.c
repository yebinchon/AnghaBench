
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flag; } ;
typedef TYPE_1__ t_FmPcdLock ;


 int ASSERT_COND (TYPE_1__*) ;
 int FALSE ;

__attribute__((used)) static __inline__ void FmPcdLockUnlock(t_FmPcdLock *p_Lock)
{
    ASSERT_COND(p_Lock);
    p_Lock->flag = FALSE;
}
