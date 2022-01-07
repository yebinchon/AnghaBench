
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int node; } ;
typedef TYPE_1__ t_FmPcdLock ;
struct TYPE_6__ {int h_Spinlock; int acquiredLocksLst; } ;
typedef TYPE_2__ t_FmPcd ;


 int NCSW_LIST_AddToTail (int *,int *) ;
 int XX_LockIntrSpinlock (int ) ;
 int XX_UnlockIntrSpinlock (int ,int ) ;

__attribute__((used)) static void EnqueueLockToAcquiredLst(t_FmPcd *p_FmPcd, t_FmPcdLock *p_Lock)
{
    uint32_t intFlags;

    intFlags = XX_LockIntrSpinlock(p_FmPcd->h_Spinlock);
    NCSW_LIST_AddToTail(&p_Lock->node, &p_FmPcd->acquiredLocksLst);
    XX_UnlockIntrSpinlock(p_FmPcd->h_Spinlock, intFlags);
}
