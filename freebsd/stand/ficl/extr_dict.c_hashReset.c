
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int size; int * name; int * link; int ** table; } ;
typedef TYPE_1__ FICL_HASH ;


 int assert (TYPE_1__*) ;

void hashReset(FICL_HASH *pHash)
{
    unsigned i;

    assert(pHash);

    for (i = 0; i < pHash->size; i++)
    {
        pHash->table[i] = ((void*)0);
    }

    pHash->link = ((void*)0);
    pHash->name = ((void*)0);
    return;
}
