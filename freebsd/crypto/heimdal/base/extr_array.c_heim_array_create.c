
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* heim_array_t ;
struct TYPE_4__ {scalar_t__ len; int * val; } ;


 TYPE_1__* _heim_alloc_object (int *,int) ;
 int array_object ;

heim_array_t
heim_array_create(void)
{
    heim_array_t array;

    array = _heim_alloc_object(&array_object, sizeof(*array));
    if (array == ((void*)0))
 return ((void*)0);

    array->val = ((void*)0);
    array->len = 0;

    return array;
}
