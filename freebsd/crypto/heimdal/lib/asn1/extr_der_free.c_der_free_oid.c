
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ length; int * components; } ;
typedef TYPE_1__ heim_oid ;


 int free (int *) ;

void
der_free_oid (heim_oid *k)
{
    free(k->components);
    k->components = ((void*)0);
    k->length = 0;
}
