
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_6__ {TYPE_2__* busyBlocks; } ;
typedef TYPE_1__ t_MM ;
typedef int t_Error ;
struct TYPE_7__ {scalar_t__ end; scalar_t__ base; struct TYPE_7__* p_Next; int name; } ;
typedef TYPE_2__ t_BusyBlock ;


 TYPE_2__* CreateBusyBlock (scalar_t__,scalar_t__,int ) ;
 int E_NO_MEMORY ;
 int E_OK ;
 int MAJOR ;
 int NO_MSG ;
 int RETURN_ERROR (int ,int ,int ) ;
 int XX_Free (TYPE_2__*) ;

__attribute__((used)) static t_Error CutBusy(t_MM *p_MM, uint64_t base, uint64_t end)
{
    t_BusyBlock *p_CurrB, *p_PrevB, *p_NewB;

    p_CurrB = p_MM->busyBlocks;
    p_PrevB = p_NewB = 0;

    while ( p_CurrB )
    {
        if ( base < p_CurrB->end )
        {
            if ( end > p_CurrB->end )
            {
                t_BusyBlock *p_NextB;
                while ( p_CurrB->p_Next && end >= p_CurrB->p_Next->end )
                {
                    p_NextB = p_CurrB->p_Next;
                    p_CurrB->p_Next = p_CurrB->p_Next->p_Next;
                    XX_Free(p_NextB);
                }

                p_NextB = p_CurrB->p_Next;
                if ( p_NextB && end > p_NextB->base )
                {
                    p_NextB->base = end;
                }
            }

            if ( base <= p_CurrB->base )
            {
                if ( end < p_CurrB->end && end > p_CurrB->base )
                {
                    p_CurrB->base = end;
                }
                else if ( end >= p_CurrB->end )
                {
                    if ( p_PrevB )
                        p_PrevB->p_Next = p_CurrB->p_Next;
                    else
                        p_MM->busyBlocks = p_CurrB->p_Next;
                    XX_Free(p_CurrB);
                }
            }
            else
            {
                if ( end < p_CurrB->end && end > p_CurrB->base )
                {
                    if ((p_NewB = CreateBusyBlock(end,
                                                  p_CurrB->end-end,
                                                  p_CurrB->name)) == ((void*)0))
                        RETURN_ERROR(MAJOR, E_NO_MEMORY, NO_MSG);
                    p_NewB->p_Next = p_CurrB->p_Next;
                    p_CurrB->p_Next = p_NewB;
                }
                p_CurrB->end = base;
            }
            break;
        }
        else
        {
            p_PrevB = p_CurrB;
            p_CurrB = p_CurrB->p_Next;
        }
    }

    return (E_OK);
}
