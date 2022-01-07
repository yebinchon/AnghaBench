
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int heim_object_t ;
typedef TYPE_1__* heim_array_t ;
struct TYPE_3__ {int len; int * val; } ;


 int ENOMEM ;
 int heim_retain (int ) ;
 int * realloc (int *,int) ;

int
heim_array_append_value(heim_array_t array, heim_object_t object)
{
    heim_object_t *ptr;

    ptr = realloc(array->val, (array->len + 1) * sizeof(array->val[0]));
    if (ptr == ((void*)0))
 return ENOMEM;
    array->val = ptr;
    array->val[array->len++] = heim_retain(object);

    return 0;
}
