
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_7__ {scalar_t__ base; scalar_t__ end; struct TYPE_7__* p_Next; } ;
typedef TYPE_1__ t_MemBlock ;
struct TYPE_8__ {int h_Spinlock; int freeMemSize; TYPE_1__* memBlocks; } ;
typedef TYPE_2__ t_MM ;
typedef scalar_t__ t_Handle ;
typedef scalar_t__ t_Error ;


 int ASSERT_COND (TYPE_2__*) ;
 scalar_t__ AddFree (TYPE_2__*,scalar_t__,scalar_t__) ;
 TYPE_1__* CreateNewBlock (scalar_t__,scalar_t__) ;
 int E_ALREADY_EXISTS ;
 int E_NO_MEMORY ;
 scalar_t__ E_OK ;
 int MAJOR ;
 int NO_MSG ;
 int RETURN_ERROR (int ,int ,int ) ;
 int XX_Free (TYPE_1__*) ;
 int XX_LockIntrSpinlock (int ) ;
 int XX_UnlockIntrSpinlock (int ,int ) ;

t_Error MM_Add(t_Handle h_MM, uint64_t base, uint64_t size)
{
    t_MM *p_MM = (t_MM *)h_MM;
    t_MemBlock *p_MemB, *p_NewMemB;
    t_Error errCode;
    uint32_t intFlags;

    ASSERT_COND(p_MM);




    intFlags = XX_LockIntrSpinlock(p_MM->h_Spinlock);

    p_MemB = p_MM->memBlocks;
    while ( p_MemB->p_Next )
    {
        if ( base >= p_MemB->base && base < p_MemB->end )
        {
        XX_UnlockIntrSpinlock(p_MM->h_Spinlock, intFlags);
            RETURN_ERROR(MAJOR, E_ALREADY_EXISTS, NO_MSG);
        }
        p_MemB = p_MemB->p_Next;
    }

    if ( base >= p_MemB->base && base < p_MemB->end )
    {
        XX_UnlockIntrSpinlock(p_MM->h_Spinlock, intFlags);
        RETURN_ERROR(MAJOR, E_ALREADY_EXISTS, NO_MSG);
    }


    if ((p_NewMemB = CreateNewBlock(base, size)) == ((void*)0))
    {
        XX_UnlockIntrSpinlock(p_MM->h_Spinlock, intFlags);
        RETURN_ERROR(MAJOR, E_NO_MEMORY, NO_MSG);
    }


    p_MemB->p_Next = p_NewMemB;


    errCode = AddFree(p_MM, base, base+size);
    if (errCode)
    {
        XX_UnlockIntrSpinlock(p_MM->h_Spinlock, intFlags);
        p_MemB->p_Next = 0;
        XX_Free(p_NewMemB);
        return ((t_Error)errCode);
    }


    p_MM->freeMemSize += size;

    XX_UnlockIntrSpinlock(p_MM->h_Spinlock, intFlags);

    return (E_OK);
}
