
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashentry {int value; } ;
typedef int * heim_object_t ;
typedef int heim_dict_t ;


 struct hashentry* _search (int ,int *) ;
 int * heim_retain (int ) ;

heim_object_t
heim_dict_copy_value(heim_dict_t dict, heim_object_t key)
{
    struct hashentry *p;
    p = _search(dict, key);
    if (p == ((void*)0))
 return ((void*)0);

    return heim_retain(p->value);
}
