
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* heim_array_t ;
struct TYPE_3__ {size_t len; } ;



size_t
heim_array_get_length(heim_array_t array)
{
    return array->len;
}
