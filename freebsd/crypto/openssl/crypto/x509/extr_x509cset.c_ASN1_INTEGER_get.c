
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int version; } ;
struct TYPE_5__ {TYPE_1__ crl; } ;
typedef TYPE_2__ X509_CRL ;


 long ASN1_INTEGER_get (int ) ;

long X509_CRL_get_version(const X509_CRL *crl)
{
    return ASN1_INTEGER_get(crl->crl.version);
}
