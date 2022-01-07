
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct hashentry {struct hashentry* next; struct hashentry** prev; void* value; void* key; } ;
typedef int heim_object_t ;
typedef TYPE_1__* heim_dict_t ;
struct TYPE_4__ {unsigned long size; struct hashentry** tab; } ;


 int ENOMEM ;
 struct hashentry* _search (TYPE_1__*,int ) ;
 unsigned long heim_get_hash (int ) ;
 int heim_release (void*) ;
 void* heim_retain (int ) ;
 struct hashentry* malloc (int) ;

int
heim_dict_add_value(heim_dict_t dict, heim_object_t key, heim_object_t value)
{
    struct hashentry **tabptr, *h;

    h = _search(dict, key);
    if (h) {
 heim_release(h->value);
 h->value = heim_retain(value);
    } else {
 unsigned long v;

 h = malloc(sizeof(*h));
 if (h == ((void*)0))
     return ENOMEM;

 h->key = heim_retain(key);
 h->value = heim_retain(value);

 v = heim_get_hash(key);

 tabptr = &dict->tab[v % dict->size];
 h->next = *tabptr;
 *tabptr = h;
 h->prev = tabptr;
 if (h->next)
     h->next->prev = &h->next;
    }

    return 0;
}
