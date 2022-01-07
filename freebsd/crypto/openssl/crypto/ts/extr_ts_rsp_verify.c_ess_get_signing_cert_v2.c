
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
typedef int ESS_SIGNING_CERT_V2 ;
typedef TYPE_3__ ASN1_TYPE ;


 int NID_id_smime_aa_signingCertificateV2 ;
 TYPE_3__* PKCS7_get_signed_attribute (int *,int ) ;
 int * d2i_ESS_SIGNING_CERT_V2 (int *,unsigned char const**,int ) ;

__attribute__((used)) static ESS_SIGNING_CERT_V2 *ess_get_signing_cert_v2(PKCS7_SIGNER_INFO *si)
{
    ASN1_TYPE *attr;
    const unsigned char *p;

    attr = PKCS7_get_signed_attribute(si, NID_id_smime_aa_signingCertificateV2);
    if (attr == ((void*)0))
        return ((void*)0);
    p = attr->value.sequence->data;
    return d2i_ESS_SIGNING_CERT_V2(((void*)0), &p, attr->value.sequence->length);
}
