
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hashentry {int value; int key; struct hashentry* next; } ;
typedef TYPE_1__* heim_dict_t ;
typedef int (* heim_dict_iterator_f_t ) (int ,int ,void*) ;
struct TYPE_3__ {size_t size; struct hashentry** tab; } ;



void
heim_dict_iterate_f(heim_dict_t dict, heim_dict_iterator_f_t func, void *arg)
{
    struct hashentry **h, *g;

    for (h = dict->tab; h < &dict->tab[dict->size]; ++h)
 for (g = *h; g; g = g->next)
     func(g->key, g->value, arg);
}
