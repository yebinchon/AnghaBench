
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* hx509_name ;
struct TYPE_5__ {int der_name; } ;
typedef int Name ;


 int ENOMEM ;
 TYPE_1__* calloc (int,int) ;
 int copy_Name (int const*,int *) ;
 int free (TYPE_1__*) ;

int
_hx509_name_from_Name(const Name *n, hx509_name *name)
{
    int ret;
    *name = calloc(1, sizeof(**name));
    if (*name == ((void*)0))
 return ENOMEM;
    ret = copy_Name(n, &(*name)->der_name);
    if (ret) {
 free(*name);
 *name = ((void*)0);
    }
    return ret;
}
