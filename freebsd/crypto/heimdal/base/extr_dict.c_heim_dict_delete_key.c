
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hashentry {TYPE_1__** prev; TYPE_1__* next; int value; int key; } ;
typedef int heim_object_t ;
typedef int heim_dict_t ;
struct TYPE_2__ {struct TYPE_2__** prev; } ;


 struct hashentry* _search (int ,int ) ;
 int free (struct hashentry*) ;
 int heim_release (int ) ;

void
heim_dict_delete_key(heim_dict_t dict, heim_object_t key)
{
    struct hashentry *h = _search(dict, key);

    if (h == ((void*)0))
 return;

    heim_release(h->key);
    heim_release(h->value);

    if ((*(h->prev) = h->next) != ((void*)0))
 h->next->prev = h->prev;

    free(h);
}
