
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_oid ;


 int der_print_heim_oid (int const*,char,char**) ;

int
hx509_oid_sprint(const heim_oid *oid, char **str)
{
    return der_print_heim_oid(oid, '.', str);
}
