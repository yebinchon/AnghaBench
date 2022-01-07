
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int req_info; int signature; int sig_alg; } ;
typedef TYPE_1__ X509_REQ ;
typedef int EVP_PKEY ;
typedef int EVP_MD ;


 int ASN1_ITEM_rptr (int ) ;
 int ASN1_item_sign (int ,int *,int *,int ,int *,int *,int const*) ;
 int X509_REQ_INFO ;

int X509_REQ_sign(X509_REQ *x, EVP_PKEY *pkey, const EVP_MD *md)
{
    return (ASN1_item_sign(ASN1_ITEM_rptr(X509_REQ_INFO), &x->sig_alg, ((void*)0),
                           x->signature, &x->req_info, pkey, md));
}
