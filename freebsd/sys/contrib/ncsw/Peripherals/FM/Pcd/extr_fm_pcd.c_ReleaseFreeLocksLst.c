
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int h_Spinlock; } ;
typedef TYPE_1__ t_FmPcdLock ;
typedef int t_FmPcd ;


 TYPE_1__* DequeueLockFromFreeLst (int *) ;
 int XX_Free (TYPE_1__*) ;
 int XX_FreeSpinlock (int ) ;

__attribute__((used)) static void ReleaseFreeLocksLst(t_FmPcd *p_FmPcd)
{
    t_FmPcdLock *p_Lock;

    p_Lock = DequeueLockFromFreeLst(p_FmPcd);
    while (p_Lock)
    {
        XX_FreeSpinlock(p_Lock->h_Spinlock);
        XX_Free(p_Lock);
        p_Lock = DequeueLockFromFreeLst(p_FmPcd);
    }
}
