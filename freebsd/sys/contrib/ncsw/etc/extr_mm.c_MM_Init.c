
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_6__ {int ** freeBlocks; int * memBlocks; scalar_t__ busyBlocks; scalar_t__ freeMemSize; int h_Spinlock; } ;
typedef TYPE_1__ t_MM ;
typedef TYPE_1__* t_Handle ;
typedef int t_Error ;


 int * CreateFreeBlock (scalar_t__,scalar_t__) ;
 int * CreateNewBlock (scalar_t__,scalar_t__) ;
 int E_INVALID_VALUE ;
 int E_NO_MEMORY ;
 int E_OK ;
 int MAJOR ;
 scalar_t__ MAKE_ALIGNED (scalar_t__,int) ;
 int MM_Free (TYPE_1__*) ;
 int MM_MAX_ALIGNMENT ;
 char* NO_MSG ;
 int RETURN_ERROR (int ,int ,char*) ;
 int XX_Free (TYPE_1__*) ;
 int XX_InitSpinlock () ;
 scalar_t__ XX_Malloc (int) ;

t_Error MM_Init(t_Handle *h_MM, uint64_t base, uint64_t size)
{
    t_MM *p_MM;
    uint64_t newBase, newSize;
    int i;

    if (!size)
    {
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("Size (should be positive)"));
    }


    p_MM = (t_MM *)XX_Malloc(sizeof(t_MM));
    if (!p_MM)
    {
        RETURN_ERROR(MAJOR, E_NO_MEMORY, NO_MSG);
    }

    p_MM->h_Spinlock = XX_InitSpinlock();
    if (!p_MM->h_Spinlock)
    {
        XX_Free(p_MM);
        RETURN_ERROR(MAJOR, E_NO_MEMORY, ("MM spinlock!"));
    }


    p_MM->freeMemSize = size;


    p_MM->busyBlocks = 0;


    if ((p_MM->memBlocks = CreateNewBlock(base, size)) == ((void*)0))
    {
        MM_Free(p_MM);
        RETURN_ERROR(MAJOR, E_NO_MEMORY, NO_MSG);
    }


    for (i=0; i <= MM_MAX_ALIGNMENT; i++)
    {
        newBase = MAKE_ALIGNED( base, (0x1 << i) );
        newSize = size - (newBase - base);

        if ((p_MM->freeBlocks[i] = CreateFreeBlock(newBase, newSize)) == ((void*)0))
        {
            MM_Free(p_MM);
            RETURN_ERROR(MAJOR, E_NO_MEMORY, NO_MSG);
        }
    }

    *h_MM = p_MM;

    return (E_OK);
}
