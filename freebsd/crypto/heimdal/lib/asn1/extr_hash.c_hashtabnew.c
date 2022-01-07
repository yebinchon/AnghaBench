
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* cmp ) (void*,void*) ;unsigned int (* hash ) (void*) ;int sz; int ** tab; } ;
typedef TYPE_1__ Hashtab ;
typedef int Hashentry ;


 int assert (int) ;
 scalar_t__ malloc (int) ;

Hashtab *
hashtabnew(int sz,
    int (*cmp) (void *, void *),
    unsigned (*hash) (void *))
{
    Hashtab *htab;
    int i;

    assert(sz > 0);

    htab = (Hashtab *) malloc(sizeof(Hashtab) + (sz - 1) * sizeof(Hashentry *));
    if (htab == ((void*)0))
 return ((void*)0);

    for (i = 0; i < sz; ++i)
 htab->tab[i] = ((void*)0);

    htab->cmp = cmp;
    htab->hash = hash;
    htab->sz = sz;
    return htab;
}
