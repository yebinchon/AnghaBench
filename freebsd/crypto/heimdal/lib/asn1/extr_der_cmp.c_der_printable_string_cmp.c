
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_printable_string ;


 int der_heim_octet_string_cmp (int const*,int const*) ;

int
der_printable_string_cmp(const heim_printable_string *p,
    const heim_printable_string *q)
{
    return der_heim_octet_string_cmp(p, q);
}
