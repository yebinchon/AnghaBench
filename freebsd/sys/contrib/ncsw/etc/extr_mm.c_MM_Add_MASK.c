#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {scalar_t__ base; scalar_t__ end; struct TYPE_7__* p_Next; } ;
typedef  TYPE_1__ t_MemBlock ;
struct TYPE_8__ {int /*<<< orphan*/  h_Spinlock; int /*<<< orphan*/  freeMemSize; TYPE_1__* memBlocks; } ;
typedef  TYPE_2__ t_MM ;
typedef  scalar_t__ t_Handle ;
typedef  scalar_t__ t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 TYPE_1__* FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  E_ALREADY_EXISTS ; 
 int /*<<< orphan*/  E_NO_MEMORY ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  NO_MSG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

t_Error FUNC7(t_Handle h_MM, uint64_t base, uint64_t size)
{
    t_MM        *p_MM = (t_MM *)h_MM;
    t_MemBlock  *p_MemB, *p_NewMemB;
    t_Error     errCode;
    uint32_t    intFlags;

    FUNC0(p_MM);

    /* find a last block in the list of memory blocks to insert a new
     * memory block
     */
    intFlags = FUNC5(p_MM->h_Spinlock);

    p_MemB = p_MM->memBlocks;
    while ( p_MemB->p_Next )
    {
        if ( base >= p_MemB->base && base < p_MemB->end )
        {
        FUNC6(p_MM->h_Spinlock, intFlags);
            FUNC3(MAJOR, E_ALREADY_EXISTS, NO_MSG);
        }
        p_MemB = p_MemB->p_Next;
    }
    /* check for a last memory block */
    if ( base >= p_MemB->base && base < p_MemB->end )
    {
        FUNC6(p_MM->h_Spinlock, intFlags);
        FUNC3(MAJOR, E_ALREADY_EXISTS, NO_MSG);
    }

    /* create a new memory block */
    if ((p_NewMemB = FUNC2(base, size)) == NULL)
    {
        FUNC6(p_MM->h_Spinlock, intFlags);
        FUNC3(MAJOR, E_NO_MEMORY, NO_MSG);
    }

    /* append a new memory block to the end of the list of memory blocks */
    p_MemB->p_Next = p_NewMemB;

    /* add a new free block to the free lists */
    errCode = FUNC1(p_MM, base, base+size);
    if (errCode)
    {
        FUNC6(p_MM->h_Spinlock, intFlags);
        p_MemB->p_Next = 0;
        FUNC4(p_NewMemB);
        return ((t_Error)errCode);
    }

    /* Adding the new block size to free memory size */
    p_MM->freeMemSize += size;

    FUNC6(p_MM->h_Spinlock, intFlags);

    return (E_OK);
}