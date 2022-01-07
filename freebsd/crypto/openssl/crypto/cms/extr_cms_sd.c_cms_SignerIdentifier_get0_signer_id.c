
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509_NAME ;
struct TYPE_6__ {int * subjectKeyIdentifier; TYPE_1__* issuerAndSerialNumber; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ d; } ;
struct TYPE_5__ {int * serialNumber; int * issuer; } ;
typedef TYPE_3__ CMS_SignerIdentifier ;
typedef int ASN1_OCTET_STRING ;
typedef int ASN1_INTEGER ;


 scalar_t__ CMS_SIGNERINFO_ISSUER_SERIAL ;
 scalar_t__ CMS_SIGNERINFO_KEYIDENTIFIER ;

int cms_SignerIdentifier_get0_signer_id(CMS_SignerIdentifier *sid,
                                        ASN1_OCTET_STRING **keyid,
                                        X509_NAME **issuer,
                                        ASN1_INTEGER **sno)
{
    if (sid->type == CMS_SIGNERINFO_ISSUER_SERIAL) {
        if (issuer)
            *issuer = sid->d.issuerAndSerialNumber->issuer;
        if (sno)
            *sno = sid->d.issuerAndSerialNumber->serialNumber;
    } else if (sid->type == CMS_SIGNERINFO_KEYIDENTIFIER) {
        if (keyid)
            *keyid = sid->d.subjectKeyIdentifier;
    } else
        return 0;
    return 1;
}
