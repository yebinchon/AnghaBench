
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_printable_string ;


 int der_free_octet_string (int *) ;

void
der_free_printable_string (heim_printable_string *str)
{
    der_free_octet_string(str);
}
