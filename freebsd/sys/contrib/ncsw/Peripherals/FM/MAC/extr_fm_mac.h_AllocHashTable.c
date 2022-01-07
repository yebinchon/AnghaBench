
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int uint16_t ;
typedef int t_List ;
struct TYPE_4__ {int size; int * p_Lsts; } ;
typedef TYPE_1__ t_EthHash ;


 int E_NO_MEMORY ;
 int INIT_LIST (int *) ;
 int MAJOR ;
 int REPORT_ERROR (int ,int ,char*) ;
 int XX_Free (TYPE_1__*) ;
 scalar_t__ XX_Malloc (int) ;

__attribute__((used)) static __inline__ t_EthHash * AllocHashTable(uint16_t size)
{
    uint32_t i;
    t_EthHash *p_Hash;


    p_Hash = (t_EthHash *)XX_Malloc(sizeof(t_EthHash));
    if (!p_Hash)
    {
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("Address hash table"));
        return ((void*)0);
    }
    p_Hash->size = size;

    p_Hash->p_Lsts = (t_List *)XX_Malloc(p_Hash->size*sizeof(t_List));
    if (!p_Hash->p_Lsts)
    {
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("Address hash table"));
        XX_Free(p_Hash);
        return ((void*)0);
    }

    for (i=0 ; i<p_Hash->size; i++)
        INIT_LIST(&p_Hash->p_Lsts[i]);

    return p_Hash;
}
