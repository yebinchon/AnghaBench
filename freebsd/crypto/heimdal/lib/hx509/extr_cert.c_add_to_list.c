
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int * val; } ;
typedef TYPE_1__ hx509_octet_string_list ;
typedef int heim_octet_string ;


 int ENOMEM ;
 int der_copy_octet_string (int const*,int *) ;
 void* realloc (int *,int) ;

__attribute__((used)) static int
add_to_list(hx509_octet_string_list *list, const heim_octet_string *entry)
{
    void *p;
    int ret;

    p = realloc(list->val, (list->len + 1) * sizeof(list->val[0]));
    if (p == ((void*)0))
 return ENOMEM;
    list->val = p;
    ret = der_copy_octet_string(entry, &list->val[list->len]);
    if (ret)
 return ret;
    list->len++;
    return 0;
}
