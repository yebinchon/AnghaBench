
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hashentry {int key; struct hashentry* next; } ;
typedef int heim_object_t ;
typedef TYPE_1__* heim_dict_t ;
struct TYPE_3__ {unsigned long size; struct hashentry** tab; } ;


 scalar_t__ heim_cmp (int ,int ) ;
 unsigned long heim_get_hash (int ) ;

__attribute__((used)) static struct hashentry *
_search(heim_dict_t dict, heim_object_t ptr)
{
    unsigned long v = heim_get_hash(ptr);
    struct hashentry *p;

    for (p = dict->tab[v % dict->size]; p != ((void*)0); p = p->next)
 if (heim_cmp(ptr, p->key) == 0)
     return p;

    return ((void*)0);
}
