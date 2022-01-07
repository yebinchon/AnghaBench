
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_4__ {int subjectKeyIdentifier; int issuerAndSerialNumber; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ d; } ;
typedef TYPE_2__ CMS_SignerIdentifier ;


 scalar_t__ CMS_SIGNERINFO_ISSUER_SERIAL ;
 scalar_t__ CMS_SIGNERINFO_KEYIDENTIFIER ;
 int cms_ias_cert_cmp (int ,int *) ;
 int cms_keyid_cert_cmp (int ,int *) ;

int cms_SignerIdentifier_cert_cmp(CMS_SignerIdentifier *sid, X509 *cert)
{
    if (sid->type == CMS_SIGNERINFO_ISSUER_SERIAL)
        return cms_ias_cert_cmp(sid->d.issuerAndSerialNumber, cert);
    else if (sid->type == CMS_SIGNERINFO_KEYIDENTIFIER)
        return cms_keyid_cert_cmp(sid->d.subjectKeyIdentifier, cert);
    else
        return -1;
}
