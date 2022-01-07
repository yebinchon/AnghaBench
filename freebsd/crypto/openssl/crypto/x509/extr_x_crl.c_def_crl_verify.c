
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int crl; int signature; int sig_alg; } ;
typedef TYPE_1__ X509_CRL ;
typedef int EVP_PKEY ;


 int ASN1_ITEM_rptr (int ) ;
 int ASN1_item_verify (int ,int *,int *,int *,int *) ;
 int X509_CRL_INFO ;

__attribute__((used)) static int def_crl_verify(X509_CRL *crl, EVP_PKEY *r)
{
    return (ASN1_item_verify(ASN1_ITEM_rptr(X509_CRL_INFO),
                             &crl->sig_alg, &crl->signature, &crl->crl, r));
}
