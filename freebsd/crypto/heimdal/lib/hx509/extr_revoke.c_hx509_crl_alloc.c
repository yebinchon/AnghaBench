
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* hx509_crl ;
typedef int hx509_context ;
struct TYPE_5__ {scalar_t__ expire; int revoked; } ;


 int ENOMEM ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int hx509_certs_init (int ,char*,int ,int *,int *) ;
 int hx509_set_error_string (int ,int ,int,char*) ;

int
hx509_crl_alloc(hx509_context context, hx509_crl *crl)
{
    int ret;

    *crl = calloc(1, sizeof(**crl));
    if (*crl == ((void*)0)) {
 hx509_set_error_string(context, 0, ENOMEM, "out of memory");
 return ENOMEM;
    }

    ret = hx509_certs_init(context, "MEMORY:crl", 0, ((void*)0), &(*crl)->revoked);
    if (ret) {
 free(*crl);
 *crl = ((void*)0);
 return ret;
    }
    (*crl)->expire = 0;
    return ret;
}
