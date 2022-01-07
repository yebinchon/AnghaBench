
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_visible_string ;


 int der_copy_general_string (int const*,int *) ;

int
der_copy_visible_string (const heim_visible_string *from,
    heim_visible_string *to)
{
    return der_copy_general_string(from, to);
}
