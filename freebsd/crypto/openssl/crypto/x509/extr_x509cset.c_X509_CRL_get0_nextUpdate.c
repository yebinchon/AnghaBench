
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int const* nextUpdate; } ;
struct TYPE_5__ {TYPE_1__ crl; } ;
typedef TYPE_2__ X509_CRL ;
typedef int ASN1_TIME ;



const ASN1_TIME *X509_CRL_get0_nextUpdate(const X509_CRL *crl)
{
    return crl->crl.nextUpdate;
}
