
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int signature; } ;
struct TYPE_4__ {TYPE_3__ cert_info; int signature; int sig_alg; } ;
typedef TYPE_1__ X509 ;
typedef int EVP_PKEY ;


 int ASN1_ITEM_rptr (int ) ;
 int ASN1_item_verify (int ,int *,int *,TYPE_3__*,int *) ;
 scalar_t__ X509_ALGOR_cmp (int *,int *) ;
 int X509_CINF ;

int X509_verify(X509 *a, EVP_PKEY *r)
{
    if (X509_ALGOR_cmp(&a->sig_alg, &a->cert_info.signature))
        return 0;
    return (ASN1_item_verify(ASN1_ITEM_rptr(X509_CINF), &a->sig_alg,
                             &a->signature, &a->cert_info, r));
}
