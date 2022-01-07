
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_5__ {TYPE_1__* issuer_and_serial; } ;
struct TYPE_4__ {int serial; int issuer; } ;
typedef TYPE_2__ PKCS7_RECIP_INFO ;


 int ASN1_INTEGER_cmp (int ,int ) ;
 int X509_NAME_cmp (int ,int ) ;
 int X509_get_issuer_name (int *) ;
 int X509_get_serialNumber (int *) ;

__attribute__((used)) static int pkcs7_cmp_ri(PKCS7_RECIP_INFO *ri, X509 *pcert)
{
    int ret;
    ret = X509_NAME_cmp(ri->issuer_and_serial->issuer,
                        X509_get_issuer_name(pcert));
    if (ret)
        return ret;
    return ASN1_INTEGER_cmp(X509_get_serialNumber(pcert),
                            ri->issuer_and_serial->serial);
}
