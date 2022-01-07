
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int heim_object_t ;
typedef TYPE_1__* heim_array_t ;
struct TYPE_3__ {size_t len; int * val; } ;


 int heim_abort (char*) ;
 int heim_retain (int ) ;

heim_object_t
heim_array_copy_value(heim_array_t array, size_t idx)
{
    if (idx >= array->len)
 heim_abort("index too large");
    return heim_retain(array->val[idx]);
}
