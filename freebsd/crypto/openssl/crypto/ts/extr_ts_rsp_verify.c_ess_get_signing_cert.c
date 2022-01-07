
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* sequence; } ;
struct TYPE_7__ {TYPE_2__ value; } ;
struct TYPE_5__ {unsigned char* data; int length; } ;
typedef int PKCS7_SIGNER_INFO ;
typedef int ESS_SIGNING_CERT ;
typedef TYPE_3__ ASN1_TYPE ;


 int NID_id_smime_aa_signingCertificate ;
 TYPE_3__* PKCS7_get_signed_attribute (int *,int ) ;
 int * d2i_ESS_SIGNING_CERT (int *,unsigned char const**,int ) ;

__attribute__((used)) static ESS_SIGNING_CERT *ess_get_signing_cert(PKCS7_SIGNER_INFO *si)
{
    ASN1_TYPE *attr;
    const unsigned char *p;
    attr = PKCS7_get_signed_attribute(si, NID_id_smime_aa_signingCertificate);
    if (!attr)
        return ((void*)0);
    p = attr->value.sequence->data;
    return d2i_ESS_SIGNING_CERT(((void*)0), &p, attr->value.sequence->length);
}
