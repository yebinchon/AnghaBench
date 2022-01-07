
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int len; int * val; } ;
typedef TYPE_1__ hx509_path ;


 int free (int *) ;
 int hx509_cert_free (int ) ;

void
_hx509_path_free(hx509_path *path)
{
    unsigned i;

    for (i = 0; i < path->len; i++)
 hx509_cert_free(path->val[i]);
    free(path->val);
    path->val = ((void*)0);
    path->len = 0;
}
