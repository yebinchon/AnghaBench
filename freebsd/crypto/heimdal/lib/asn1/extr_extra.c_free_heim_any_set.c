
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_any_set ;


 int der_free_octet_string (int *) ;

void
free_heim_any_set(heim_any_set *data)
{
    der_free_octet_string(data);
}
