
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int p_Next; } ;
typedef TYPE_1__ t_List ;
struct TYPE_8__ {int node; } ;
typedef TYPE_2__ t_EthHashEntry ;


 TYPE_2__* ETH_HASH_ENTRY_OBJ (int ) ;
 int NCSW_LIST_DelAndInit (int *) ;
 int NCSW_LIST_IsEmpty (TYPE_1__*) ;

__attribute__((used)) static __inline__ t_EthHashEntry *DequeueAddrFromHashEntry(t_List *p_AddrLst)
{
   t_EthHashEntry *p_HashEntry = ((void*)0);
    if (!NCSW_LIST_IsEmpty(p_AddrLst))
    {
        p_HashEntry = ETH_HASH_ENTRY_OBJ(p_AddrLst->p_Next);
        NCSW_LIST_DelAndInit(&p_HashEntry->node);
    }
    return p_HashEntry;
}
