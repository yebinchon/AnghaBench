
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509_NAME ;
struct TYPE_4__ {int issuer; } ;
struct TYPE_5__ {TYPE_1__ cert_info; } ;
typedef TYPE_2__ X509 ;


 int X509_NAME_set (int *,int *) ;

int X509_set_issuer_name(X509 *x, X509_NAME *name)
{
    if (x == ((void*)0))
        return 0;
    return X509_NAME_set(&x->cert_info.issuer, name);
}
