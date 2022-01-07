
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* hx509_name ;
struct TYPE_5__ {int der_name; } ;


 int free (TYPE_1__*) ;
 int free_Name (int *) ;
 int memset (TYPE_1__*,int ,int) ;

void
hx509_name_free(hx509_name *name)
{
    free_Name(&(*name)->der_name);
    memset(*name, 0, sizeof(**name));
    free(*name);
    *name = ((void*)0);
}
