
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_ia5_string ;


 int der_free_octet_string (int *) ;

void
der_free_ia5_string (heim_ia5_string *str)
{
    der_free_octet_string(str);
}
