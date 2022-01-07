
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* heim_array_t ;
typedef int (* heim_array_iterator_f_t ) (int ,void*) ;
struct TYPE_3__ {size_t len; int * val; } ;



void
heim_array_iterate_f(heim_array_t array, heim_array_iterator_f_t fn, void *ctx)
{
    size_t n;
    for (n = 0; n < array->len; n++)
 fn(array->val[n], ctx);
}
