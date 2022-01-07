
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; int * val; } ;
typedef TYPE_1__ hx509_octet_string_list ;


 int der_free_octet_string (int *) ;
 int free (int *) ;

void
hx509_free_octet_string_list(hx509_octet_string_list *list)
{
    size_t i;
    for (i = 0; i < list->len; i++)
 der_free_octet_string(&list->val[i]);
    free(list->val);
    list->val = ((void*)0);
    list->len = 0;
}
