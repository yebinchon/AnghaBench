
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_6__ {TYPE_2__** freeBlocks; } ;
typedef TYPE_1__ t_MM ;
struct TYPE_7__ {scalar_t__ base; scalar_t__ end; struct TYPE_7__* p_Next; } ;
typedef TYPE_2__ t_FreeBlock ;
typedef int t_BusyBlock ;


 int AddBusy (TYPE_1__*,int *) ;
 int * CreateBusyBlock (scalar_t__,scalar_t__,char*) ;
 scalar_t__ CutFree (TYPE_1__*,scalar_t__,scalar_t__) ;
 scalar_t__ E_OK ;
 int ILLEGAL_BASE ;
 scalar_t__ MAKE_ALIGNED (scalar_t__,scalar_t__) ;
 size_t MM_MAX_ALIGNMENT ;
 int XX_Free (int *) ;

__attribute__((used)) static uint64_t MmGetGreaterAlignment(t_MM *p_MM, uint64_t size, uint64_t alignment, char* name)
{
    t_FreeBlock *p_FreeB;
    t_BusyBlock *p_NewBusyB;
    uint64_t holdBase, holdEnd, alignBase = 0;




    p_FreeB = p_MM->freeBlocks[MM_MAX_ALIGNMENT];

    while ( p_FreeB )
    {
        alignBase = MAKE_ALIGNED(p_FreeB->base, alignment);



        if ( alignBase >= p_FreeB->base &&
             alignBase < p_FreeB->end &&
             size <= (p_FreeB->end - alignBase) )
            break;
        else
            p_FreeB = p_FreeB->p_Next;
    }


    if ( !p_FreeB )
        return (uint64_t)(ILLEGAL_BASE);

    holdBase = alignBase;
    holdEnd = alignBase + size;


    if ((p_NewBusyB = CreateBusyBlock(holdBase, size, name)) == ((void*)0))
        return (uint64_t)(ILLEGAL_BASE);


    if ( CutFree ( p_MM, holdBase, holdEnd ) != E_OK )
    {
        XX_Free(p_NewBusyB);
        return (uint64_t)(ILLEGAL_BASE);
    }


    AddBusy ( p_MM, p_NewBusyB );

    return (holdBase);
}
