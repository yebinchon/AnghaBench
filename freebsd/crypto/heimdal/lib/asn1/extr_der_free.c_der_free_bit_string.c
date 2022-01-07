
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ length; int * data; } ;
typedef TYPE_1__ heim_bit_string ;


 int free (int *) ;

void
der_free_bit_string (heim_bit_string *k)
{
    free(k->data);
    k->data = ((void*)0);
    k->length = 0;
}
