
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_6__ {int h_Spinlock; int freeMemSize; TYPE_2__** freeBlocks; } ;
typedef TYPE_1__ t_MM ;
typedef scalar_t__ t_Handle ;
struct TYPE_7__ {int end; int base; struct TYPE_7__* p_Next; } ;
typedef TYPE_2__ t_FreeBlock ;
typedef int t_BusyBlock ;


 int ASSERT_COND (TYPE_1__*) ;
 int AddBusy (TYPE_1__*,int *) ;
 int * CreateBusyBlock (int,int,char*) ;
 scalar_t__ CutFree (TYPE_1__*,int,int) ;
 scalar_t__ E_OK ;
 int ILLEGAL_BASE ;
 int MM_MAX_ALIGNMENT ;
 int XX_Free (int *) ;
 int XX_LockIntrSpinlock (int ) ;
 int XX_UnlockIntrSpinlock (int ,int ) ;

uint64_t MM_GetForceMin(t_Handle h_MM, uint64_t size, uint64_t alignment, uint64_t min, char* name)
{
    t_MM *p_MM = (t_MM *)h_MM;
    t_FreeBlock *p_FreeB;
    t_BusyBlock *p_NewBusyB;
    uint64_t holdBase, holdEnd, j = alignment, i=0;
    uint32_t intFlags;

    ASSERT_COND(p_MM);



    while ((j & 0x1) == 0)
    {
        i++;
        j = j >> 1;
    }

    if ( (j != 1) || (i > MM_MAX_ALIGNMENT) )
    {
        return (uint64_t)(ILLEGAL_BASE);
    }

    intFlags = XX_LockIntrSpinlock(p_MM->h_Spinlock);
    p_FreeB = p_MM->freeBlocks[i];





    while ( p_FreeB && (min >= p_FreeB->end))
            p_FreeB = p_FreeB->p_Next;


    if ( !p_FreeB )
    {
        XX_UnlockIntrSpinlock(p_MM->h_Spinlock, intFlags);
        return (uint64_t)(ILLEGAL_BASE);
    }


    holdBase = ( min <= p_FreeB->base ) ? p_FreeB->base : min;
    if ((holdBase + size) <= p_FreeB->end )
    {
        holdEnd = holdBase + size;
    }
    else
    {
        p_FreeB = p_FreeB->p_Next;
        while ( p_FreeB && ((p_FreeB->end - p_FreeB->base) < size) )
            p_FreeB = p_FreeB->p_Next;


        if ( !p_FreeB )
        {
            XX_UnlockIntrSpinlock(p_MM->h_Spinlock, intFlags);
            return (uint64_t)(ILLEGAL_BASE);
        }

        holdBase = p_FreeB->base;
        holdEnd = holdBase + size;
    }


    if ((p_NewBusyB = CreateBusyBlock(holdBase, size, name)) == ((void*)0))
    {
        XX_UnlockIntrSpinlock(p_MM->h_Spinlock, intFlags);
        return (uint64_t)(ILLEGAL_BASE);
    }


    if ( CutFree( p_MM, holdBase, holdEnd ) != E_OK )
    {
        XX_UnlockIntrSpinlock(p_MM->h_Spinlock, intFlags);
        XX_Free(p_NewBusyB);
        return (uint64_t)(ILLEGAL_BASE);
    }


    p_MM->freeMemSize -= size;


    AddBusy( p_MM, p_NewBusyB );
    XX_UnlockIntrSpinlock(p_MM->h_Spinlock, intFlags);

    return (holdBase);
}
