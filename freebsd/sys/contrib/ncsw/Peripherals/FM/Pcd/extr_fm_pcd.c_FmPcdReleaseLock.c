
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_4__ {int node; } ;
typedef TYPE_1__ t_FmPcdLock ;
typedef int t_FmPcd ;


 int ASSERT_COND (scalar_t__) ;
 int EnqueueLockToFreeLst (int *,TYPE_1__*) ;
 int FmPcdLock (scalar_t__) ;
 int FmPcdUnlock (scalar_t__,int ) ;
 int NCSW_LIST_DelAndInit (int *) ;

void FmPcdReleaseLock(t_Handle h_FmPcd, t_FmPcdLock *p_Lock)
{
    uint32_t intFlags;
    ASSERT_COND(h_FmPcd);
    intFlags = FmPcdLock(h_FmPcd);
    NCSW_LIST_DelAndInit(&p_Lock->node);
    FmPcdUnlock(h_FmPcd, intFlags);
    EnqueueLockToFreeLst((t_FmPcd*)h_FmPcd, p_Lock);
}
