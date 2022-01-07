
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int req_info; int signature; int sig_alg; } ;
typedef TYPE_1__ X509_REQ ;
typedef int EVP_PKEY ;


 int ASN1_ITEM_rptr (int ) ;
 int ASN1_item_verify (int ,int *,int ,int *,int *) ;
 int X509_REQ_INFO ;

int X509_REQ_verify(X509_REQ *a, EVP_PKEY *r)
{
    return (ASN1_item_verify(ASN1_ITEM_rptr(X509_REQ_INFO),
                             &a->sig_alg, a->signature, &a->req_info, r));
}
