
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int * val; } ;
typedef TYPE_1__ hx509_path ;
typedef int hx509_context ;
typedef int hx509_cert ;


 int ENOMEM ;
 int hx509_cert_ref (int ) ;
 int hx509_set_error_string (int ,int ,int,char*) ;
 int * realloc (int *,int) ;

int
_hx509_path_append(hx509_context context, hx509_path *path, hx509_cert cert)
{
    hx509_cert *val;
    val = realloc(path->val, (path->len + 1) * sizeof(path->val[0]));
    if (val == ((void*)0)) {
 hx509_set_error_string(context, 0, ENOMEM, "out of memory");
 return ENOMEM;
    }

    path->val = val;
    path->val[path->len] = hx509_cert_ref(cert);
    path->len++;

    return 0;
}
