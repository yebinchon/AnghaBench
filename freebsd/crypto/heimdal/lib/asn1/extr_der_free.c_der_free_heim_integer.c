
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ length; int * data; } ;
typedef TYPE_1__ heim_integer ;


 int free (int *) ;

void
der_free_heim_integer (heim_integer *k)
{
    free(k->data);
    k->data = ((void*)0);
    k->length = 0;
}
