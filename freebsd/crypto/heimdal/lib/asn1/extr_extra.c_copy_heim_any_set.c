
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_any_set ;


 int der_copy_octet_string (int const*,int *) ;

int
copy_heim_any_set(const heim_any_set *from, heim_any_set *to)
{
    return der_copy_octet_string(from, to);
}
