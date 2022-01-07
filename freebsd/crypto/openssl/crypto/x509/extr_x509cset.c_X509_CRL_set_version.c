
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * version; } ;
struct TYPE_5__ {TYPE_1__ crl; } ;
typedef TYPE_2__ X509_CRL ;


 int * ASN1_INTEGER_new () ;
 int ASN1_INTEGER_set (int *,long) ;

int X509_CRL_set_version(X509_CRL *x, long version)
{
    if (x == ((void*)0))
        return 0;
    if (x->crl.version == ((void*)0)) {
        if ((x->crl.version = ASN1_INTEGER_new()) == ((void*)0))
            return 0;
    }
    return ASN1_INTEGER_set(x->crl.version, version);
}
