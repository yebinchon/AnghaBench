
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_3__ {int serialNumber; int issuer; } ;
typedef TYPE_1__ CMS_IssuerAndSerialNumber ;


 int ASN1_INTEGER_cmp (int ,int ) ;
 int X509_NAME_cmp (int ,int ) ;
 int X509_get_issuer_name (int *) ;
 int X509_get_serialNumber (int *) ;

int cms_ias_cert_cmp(CMS_IssuerAndSerialNumber *ias, X509 *cert)
{
    int ret;
    ret = X509_NAME_cmp(ias->issuer, X509_get_issuer_name(cert));
    if (ret)
        return ret;
    return ASN1_INTEGER_cmp(ias->serialNumber, X509_get_serialNumber(cert));
}
