
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; int * val; } ;
typedef TYPE_1__ hx509_name_constraints ;


 int free (int *) ;
 int free_NameConstraints (int *) ;

__attribute__((used)) static void
free_name_constraints(hx509_name_constraints *nc)
{
    size_t i;

    for (i = 0 ; i < nc->len; i++)
 free_NameConstraints(&nc->val[i]);
    free(nc->val);
}
