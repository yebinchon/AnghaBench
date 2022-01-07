
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_6__ {int h_Spinlock; int freeMemSize; TYPE_2__* busyBlocks; } ;
typedef TYPE_1__ t_MM ;
typedef scalar_t__ t_Handle ;
struct TYPE_7__ {scalar_t__ base; scalar_t__ end; struct TYPE_7__* p_Next; } ;
typedef TYPE_2__ t_BusyBlock ;


 int ASSERT_COND (TYPE_1__*) ;
 scalar_t__ AddFree (TYPE_1__*,scalar_t__,scalar_t__) ;
 scalar_t__ E_OK ;
 int XX_Free (TYPE_2__*) ;
 int XX_LockIntrSpinlock (int ) ;
 int XX_UnlockIntrSpinlock (int ,int ) ;

uint64_t MM_Put(t_Handle h_MM, uint64_t base)
{
    t_MM *p_MM = (t_MM *)h_MM;
    t_BusyBlock *p_BusyB, *p_PrevBusyB;
    uint64_t size;
    uint32_t intFlags;

    ASSERT_COND(p_MM);




    p_PrevBusyB = 0;

    intFlags = XX_LockIntrSpinlock(p_MM->h_Spinlock);
    p_BusyB = p_MM->busyBlocks;
    while ( p_BusyB && base != p_BusyB->base )
    {
        p_PrevBusyB = p_BusyB;
        p_BusyB = p_BusyB->p_Next;
    }

    if ( !p_BusyB )
    {
        XX_UnlockIntrSpinlock(p_MM->h_Spinlock, intFlags);
        return (uint64_t)(0);
    }

    if ( AddFree( p_MM, p_BusyB->base, p_BusyB->end ) != E_OK )
    {
        XX_UnlockIntrSpinlock(p_MM->h_Spinlock, intFlags);
        return (uint64_t)(0);
    }


    if ( p_PrevBusyB )
        p_PrevBusyB->p_Next = p_BusyB->p_Next;
    else
        p_MM->busyBlocks = p_BusyB->p_Next;

    size = p_BusyB->end - p_BusyB->base;


    p_MM->freeMemSize += size;

    XX_Free(p_BusyB);
    XX_UnlockIntrSpinlock(p_MM->h_Spinlock, intFlags);

    return (size);
}
