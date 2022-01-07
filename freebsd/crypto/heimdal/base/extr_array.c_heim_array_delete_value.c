
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int heim_object_t ;
typedef TYPE_1__* heim_array_t ;
struct TYPE_3__ {size_t len; int * val; } ;


 int heim_abort (char*) ;
 int heim_release (int ) ;
 int memmove (int *,int *,size_t) ;

void
heim_array_delete_value(heim_array_t array, size_t idx)
{
    heim_object_t obj;
    if (idx >= array->len)
 heim_abort("index too large");
    obj = array->val[idx];

    array->len--;

    if (idx < array->len)
 memmove(&array->val[idx], &array->val[idx + 1],
  (array->len - idx) * sizeof(array->val[0]));

    heim_release(obj);
}
