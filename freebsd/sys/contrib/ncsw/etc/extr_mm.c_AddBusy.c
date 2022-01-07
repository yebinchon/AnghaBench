
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* busyBlocks; } ;
typedef TYPE_1__ t_MM ;
struct TYPE_6__ {scalar_t__ base; struct TYPE_6__* p_Next; } ;
typedef TYPE_2__ t_BusyBlock ;



__attribute__((used)) static void AddBusy(t_MM *p_MM, t_BusyBlock *p_NewBusyB)
{
    t_BusyBlock *p_CurrBusyB, *p_PrevBusyB;


    p_PrevBusyB = 0;
    p_CurrBusyB = p_MM->busyBlocks;

    while ( p_CurrBusyB && p_NewBusyB->base > p_CurrBusyB->base )
    {
        p_PrevBusyB = p_CurrBusyB;
        p_CurrBusyB = p_CurrBusyB->p_Next;
    }


    if ( p_CurrBusyB )
        p_NewBusyB->p_Next = p_CurrBusyB;
    if ( p_PrevBusyB )
        p_PrevBusyB->p_Next = p_NewBusyB;
    else
        p_MM->busyBlocks = p_NewBusyB;
}
