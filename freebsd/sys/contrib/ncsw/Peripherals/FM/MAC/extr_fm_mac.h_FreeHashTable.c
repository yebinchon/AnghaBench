
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int size; struct TYPE_7__* p_Lsts; } ;
typedef TYPE_1__ t_EthHashEntry ;
typedef TYPE_1__ t_EthHash ;


 TYPE_1__* DequeueAddrFromHashEntry (TYPE_1__*) ;
 int XX_Free (TYPE_1__*) ;

__attribute__((used)) static __inline__ void FreeHashTable(t_EthHash *p_Hash)
{
    t_EthHashEntry *p_HashEntry;
    int i = 0;

    if (p_Hash)
    {
        if (p_Hash->p_Lsts)
        {
            for (i=0; i<p_Hash->size; i++)
            {
                p_HashEntry = DequeueAddrFromHashEntry(&p_Hash->p_Lsts[i]);
                while (p_HashEntry)
                {
                    XX_Free(p_HashEntry);
                    p_HashEntry = DequeueAddrFromHashEntry(&p_Hash->p_Lsts[i]);
                }
            }

            XX_Free(p_Hash->p_Lsts);
        }

        XX_Free(p_Hash);
    }
}
