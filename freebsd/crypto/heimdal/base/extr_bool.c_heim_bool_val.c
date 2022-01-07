
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_bool_t ;


 int heim_base_tagged_object_value (int ) ;

int
heim_bool_val(heim_bool_t ptr)
{
    return heim_base_tagged_object_value(ptr);
}
