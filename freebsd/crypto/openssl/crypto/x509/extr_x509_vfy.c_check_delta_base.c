
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int crl_number; int base_crl_number; } ;
typedef TYPE_1__ X509_CRL ;


 scalar_t__ ASN1_INTEGER_cmp (int ,int ) ;
 int NID_authority_key_identifier ;
 int NID_issuing_distribution_point ;
 int X509_CRL_get_issuer (TYPE_1__*) ;
 scalar_t__ X509_NAME_cmp (int ,int ) ;
 int crl_extension_match (TYPE_1__*,TYPE_1__*,int ) ;

__attribute__((used)) static int check_delta_base(X509_CRL *delta, X509_CRL *base)
{

    if (!delta->base_crl_number)
        return 0;

    if (!base->crl_number)
        return 0;

    if (X509_NAME_cmp(X509_CRL_get_issuer(base), X509_CRL_get_issuer(delta)))
        return 0;

    if (!crl_extension_match(delta, base, NID_authority_key_identifier))
        return 0;
    if (!crl_extension_match(delta, base, NID_issuing_distribution_point))
        return 0;

    if (ASN1_INTEGER_cmp(delta->base_crl_number, base->crl_number) > 0)
        return 0;

    if (ASN1_INTEGER_cmp(delta->crl_number, base->crl_number) > 0)
        return 1;
    return 0;
}
