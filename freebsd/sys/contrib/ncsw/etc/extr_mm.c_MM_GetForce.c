
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_6__ {int h_Spinlock; int freeMemSize; TYPE_2__** freeBlocks; } ;
typedef TYPE_1__ t_MM ;
typedef scalar_t__ t_Handle ;
struct TYPE_7__ {scalar_t__ base; scalar_t__ end; struct TYPE_7__* p_Next; } ;
typedef TYPE_2__ t_FreeBlock ;
typedef int t_BusyBlock ;


 int ASSERT_COND (TYPE_1__*) ;
 int AddBusy (TYPE_1__*,int *) ;
 int * CreateBusyBlock (scalar_t__,scalar_t__,char*) ;
 scalar_t__ CutFree (TYPE_1__*,scalar_t__,scalar_t__) ;
 scalar_t__ E_OK ;
 int FALSE ;
 int ILLEGAL_BASE ;
 int TRUE ;
 int XX_Free (int *) ;
 int XX_LockIntrSpinlock (int ) ;
 int XX_UnlockIntrSpinlock (int ,int ) ;

uint64_t MM_GetForce(t_Handle h_MM, uint64_t base, uint64_t size, char* name)
{
    t_MM *p_MM = (t_MM *)h_MM;
    t_FreeBlock *p_FreeB;
    t_BusyBlock *p_NewBusyB;
    uint32_t intFlags;
    bool blockIsFree = FALSE;

    ASSERT_COND(p_MM);

    intFlags = XX_LockIntrSpinlock(p_MM->h_Spinlock);
    p_FreeB = p_MM->freeBlocks[0];


    while ( p_FreeB )
    {
        if ( base >= p_FreeB->base && (base+size) <= p_FreeB->end )
        {
            blockIsFree = TRUE;
            break;
        }
        else
            p_FreeB = p_FreeB->p_Next;
    }

    if ( !blockIsFree )
    {
        XX_UnlockIntrSpinlock(p_MM->h_Spinlock, intFlags);
        return (uint64_t)(ILLEGAL_BASE);
    }


    if ((p_NewBusyB = CreateBusyBlock(base, size, name)) == ((void*)0))
    {
        XX_UnlockIntrSpinlock(p_MM->h_Spinlock, intFlags);
        return (uint64_t)(ILLEGAL_BASE);
    }


    if ( CutFree ( p_MM, base, base+size ) != E_OK )
    {
        XX_UnlockIntrSpinlock(p_MM->h_Spinlock, intFlags);
        XX_Free(p_NewBusyB);
        return (uint64_t)(ILLEGAL_BASE);
    }


    p_MM->freeMemSize -= size;


    AddBusy ( p_MM, p_NewBusyB );
    XX_UnlockIntrSpinlock(p_MM->h_Spinlock, intFlags);

    return (base);
}
