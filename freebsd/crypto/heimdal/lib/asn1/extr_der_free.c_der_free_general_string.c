
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * heim_general_string ;


 int free (int *) ;

void
der_free_general_string (heim_general_string *str)
{
    free(*str);
    *str = ((void*)0);
}
