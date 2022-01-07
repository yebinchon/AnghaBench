
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* heim_dict_t ;
struct TYPE_5__ {scalar_t__ size; int * tab; } ;


 TYPE_1__* _heim_alloc_object (int *,int) ;
 int * calloc (scalar_t__,int) ;
 int dict_object ;
 scalar_t__ findprime (size_t) ;
 int heim_release (TYPE_1__*) ;

heim_dict_t
heim_dict_create(size_t size)
{
    heim_dict_t dict;

    dict = _heim_alloc_object(&dict_object, sizeof(*dict));

    dict->size = findprime(size);
    if (dict->size == 0) {
 heim_release(dict);
 return ((void*)0);
    }

    dict->tab = calloc(dict->size, sizeof(dict->tab[0]));
    if (dict->tab == ((void*)0)) {
 dict->size = 0;
 heim_release(dict);
 return ((void*)0);
    }

    return dict;
}
