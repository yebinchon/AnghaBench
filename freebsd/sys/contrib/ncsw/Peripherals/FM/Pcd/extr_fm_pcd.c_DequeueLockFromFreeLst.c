
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int node; } ;
typedef TYPE_1__ t_FmPcdLock ;
struct TYPE_9__ {int p_Next; } ;
struct TYPE_8__ {scalar_t__ h_Spinlock; TYPE_3__ freeLocksLst; } ;
typedef TYPE_2__ t_FmPcd ;


 TYPE_1__* FM_PCD_LOCK_OBJ (int ) ;
 int NCSW_LIST_DelAndInit (int *) ;
 int NCSW_LIST_IsEmpty (TYPE_3__*) ;
 int XX_LockIntrSpinlock (scalar_t__) ;
 int XX_UnlockIntrSpinlock (scalar_t__,int ) ;

__attribute__((used)) static t_FmPcdLock * DequeueLockFromFreeLst(t_FmPcd *p_FmPcd)
{
    t_FmPcdLock *p_Lock = ((void*)0);
    uint32_t intFlags;

    intFlags = XX_LockIntrSpinlock(p_FmPcd->h_Spinlock);
    if (!NCSW_LIST_IsEmpty(&p_FmPcd->freeLocksLst))
    {
        p_Lock = FM_PCD_LOCK_OBJ(p_FmPcd->freeLocksLst.p_Next);
        NCSW_LIST_DelAndInit(&p_Lock->node);
    }
    if (p_FmPcd->h_Spinlock)
     XX_UnlockIntrSpinlock(p_FmPcd->h_Spinlock, intFlags);

    return p_Lock;
}
