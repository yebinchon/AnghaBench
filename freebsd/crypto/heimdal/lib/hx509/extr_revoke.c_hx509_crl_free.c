
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* hx509_crl ;
typedef int hx509_context ;
struct TYPE_5__ {int revoked; } ;


 int free (TYPE_1__*) ;
 int hx509_certs_free (int *) ;
 int memset (TYPE_1__*,int ,int) ;

void
hx509_crl_free(hx509_context context, hx509_crl *crl)
{
    if (*crl == ((void*)0))
 return;
    hx509_certs_free(&(*crl)->revoked);
    memset(*crl, 0, sizeof(**crl));
    free(*crl);
    *crl = ((void*)0);
}
