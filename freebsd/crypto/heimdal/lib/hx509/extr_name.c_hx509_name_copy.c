
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* hx509_name ;
typedef int hx509_context ;
struct TYPE_6__ {int der_name; } ;


 int ENOMEM ;
 TYPE_1__* calloc (int,int) ;
 int copy_Name (int *,int *) ;
 int free (TYPE_1__*) ;

int
hx509_name_copy(hx509_context context, const hx509_name from, hx509_name *to)
{
    int ret;

    *to = calloc(1, sizeof(**to));
    if (*to == ((void*)0))
 return ENOMEM;
    ret = copy_Name(&from->der_name, &(*to)->der_name);
    if (ret) {
 free(*to);
 *to = ((void*)0);
 return ENOMEM;
    }
    return 0;
}
