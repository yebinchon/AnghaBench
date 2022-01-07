
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ t_Handle ;
typedef int t_FmPcdLock ;
typedef int t_FmPcd ;


 int ASSERT_COND (scalar_t__) ;
 int * DequeueLockFromFreeLst (int *) ;
 int EnqueueLockToAcquiredLst (int *,int *) ;
 int FillFreeLocksLst (scalar_t__) ;

t_FmPcdLock * FmPcdAcquireLock(t_Handle h_FmPcd)
{
    t_FmPcdLock *p_Lock;
    ASSERT_COND(h_FmPcd);
    p_Lock = DequeueLockFromFreeLst((t_FmPcd*)h_FmPcd);
    if (!p_Lock)
    {
        FillFreeLocksLst(h_FmPcd);
        p_Lock = DequeueLockFromFreeLst((t_FmPcd*)h_FmPcd);
    }

    if (p_Lock)
        EnqueueLockToAcquiredLst((t_FmPcd*)h_FmPcd, p_Lock);
    return p_Lock;
}
