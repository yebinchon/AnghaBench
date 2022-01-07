
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_ia5_string ;


 int der_copy_printable_string (int const*,int *) ;

int
der_copy_ia5_string (const heim_ia5_string *from,
       heim_ia5_string *to)
{
    return der_copy_printable_string(from, to);
}
