
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* heim_object_t ;
typedef TYPE_1__* heim_array_t ;
struct TYPE_4__ {size_t len; int * val; } ;


 int free (int *) ;
 int heim_release (int ) ;

__attribute__((used)) static void
array_dealloc(heim_object_t ptr)
{
    heim_array_t array = ptr;
    size_t n;
    for (n = 0; n < array->len; n++)
 heim_release(array->val[n]);
    free(array->val);
}
