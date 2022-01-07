
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_5__ {int h_Spinlock; int freeMemSize; } ;
typedef TYPE_1__ t_MM ;
typedef scalar_t__ t_Handle ;


 int ASSERT_COND (TYPE_1__*) ;
 scalar_t__ AddFree (TYPE_1__*,scalar_t__,scalar_t__) ;
 scalar_t__ CutBusy (TYPE_1__*,scalar_t__,scalar_t__) ;
 scalar_t__ E_OK ;
 int XX_LockIntrSpinlock (int ) ;
 int XX_UnlockIntrSpinlock (int ,int ) ;

uint64_t MM_PutForce(t_Handle h_MM, uint64_t base, uint64_t size)
{
    t_MM *p_MM = (t_MM *)h_MM;
    uint64_t end = base + size;
    uint32_t intFlags;

    ASSERT_COND(p_MM);

    intFlags = XX_LockIntrSpinlock(p_MM->h_Spinlock);

    if ( CutBusy( p_MM, base, end ) != E_OK )
    {
        XX_UnlockIntrSpinlock(p_MM->h_Spinlock, intFlags);
        return (uint64_t)(0);
    }

    if ( AddFree ( p_MM, base, end ) != E_OK )
    {
        XX_UnlockIntrSpinlock(p_MM->h_Spinlock, intFlags);
        return (uint64_t)(0);
    }


    p_MM->freeMemSize += size;

    XX_UnlockIntrSpinlock(p_MM->h_Spinlock, intFlags);

    return (size);
}
