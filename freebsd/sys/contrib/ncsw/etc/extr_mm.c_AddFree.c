
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_6__ {TYPE_2__** freeBlocks; } ;
typedef TYPE_1__ t_MM ;
struct TYPE_7__ {scalar_t__ end; scalar_t__ base; struct TYPE_7__* p_Next; } ;
typedef TYPE_2__ t_FreeBlock ;
typedef int t_Error ;


 TYPE_2__* CreateFreeBlock (scalar_t__,scalar_t__) ;
 int E_NO_MEMORY ;
 int E_OK ;
 int MAJOR ;
 scalar_t__ MAKE_ALIGNED (scalar_t__,scalar_t__) ;
 int MM_MAX_ALIGNMENT ;
 int NO_MSG ;
 int RETURN_ERROR (int ,int ,int ) ;
 int XX_Free (TYPE_2__*) ;

__attribute__((used)) static t_Error AddFree(t_MM *p_MM, uint64_t base, uint64_t end)
{
    t_FreeBlock *p_PrevB, *p_CurrB, *p_NewB;
    uint64_t alignment;
    uint64_t alignBase;
    int i;


    for (i=0; i <= MM_MAX_ALIGNMENT; i++)
    {
        p_PrevB = p_NewB = 0;
        p_CurrB = p_MM->freeBlocks[i];

        alignment = (uint64_t)(0x1 << i);
        alignBase = MAKE_ALIGNED(base, alignment);


        if (alignBase >= end)
            continue;


        while ( p_CurrB )
        {
            if ( alignBase <= p_CurrB->end )
            {
                if ( end > p_CurrB->end )
                {
                    t_FreeBlock *p_NextB;
                    while ( p_CurrB->p_Next && end > p_CurrB->p_Next->end )
                    {
                        p_NextB = p_CurrB->p_Next;
                        p_CurrB->p_Next = p_CurrB->p_Next->p_Next;
                        XX_Free(p_NextB);
                    }

                    p_NextB = p_CurrB->p_Next;
                    if ( !p_NextB || (p_NextB && end < p_NextB->base) )
                    {
                        p_CurrB->end = end;
                    }
                    else
                    {
                        p_CurrB->end = p_NextB->end;
                        p_CurrB->p_Next = p_NextB->p_Next;
                        XX_Free(p_NextB);
                    }
                }
                else if ( (end < p_CurrB->base) && ((end-alignBase) >= alignment) )
                {
                    if ((p_NewB = CreateFreeBlock(alignBase, end-alignBase)) == ((void*)0))
                        RETURN_ERROR(MAJOR, E_NO_MEMORY, NO_MSG);

                    p_NewB->p_Next = p_CurrB;
                    if (p_PrevB)
                        p_PrevB->p_Next = p_NewB;
                    else
                        p_MM->freeBlocks[i] = p_NewB;
                    break;
                }

                if ((alignBase < p_CurrB->base) && (end >= p_CurrB->base))
                {
                    p_CurrB->base = alignBase;
                }



                if ( (p_CurrB->end - p_CurrB->base) < alignment)
                {
                    if ( p_PrevB )
                        p_PrevB->p_Next = p_CurrB->p_Next;
                    else
                        p_MM->freeBlocks[i] = p_CurrB->p_Next;
                    XX_Free(p_CurrB);
                    p_CurrB = ((void*)0);
                }
                break;
            }
            else
            {
                p_PrevB = p_CurrB;
                p_CurrB = p_CurrB->p_Next;
            }
        }




        if ( !p_CurrB && ((((uint64_t)(end-base)) & ((uint64_t)(alignment-1))) == 0) )
        {
            if ((p_NewB = CreateFreeBlock(alignBase, end-base)) == ((void*)0))
                RETURN_ERROR(MAJOR, E_NO_MEMORY, NO_MSG);

            if (p_PrevB)
                p_PrevB->p_Next = p_NewB;
            else
                p_MM->freeBlocks[i] = p_NewB;
        }


        if ((alignment == 1) && !p_NewB)
        {
            if ( p_CurrB && base > p_CurrB->base )
                base = p_CurrB->base;
            if ( p_CurrB && end < p_CurrB->end )
                end = p_CurrB->end;
        }
    }

    return (E_OK);
}
