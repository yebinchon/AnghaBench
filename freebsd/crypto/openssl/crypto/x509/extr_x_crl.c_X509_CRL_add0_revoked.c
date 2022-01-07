
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509_REVOKED ;
struct TYPE_5__ {int modified; } ;
struct TYPE_6__ {TYPE_1__ enc; int * revoked; } ;
typedef TYPE_2__ X509_CRL_INFO ;
struct TYPE_7__ {TYPE_2__ crl; } ;
typedef TYPE_3__ X509_CRL ;


 int ASN1_F_X509_CRL_ADD0_REVOKED ;
 int ASN1err (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int X509_REVOKED_cmp ;
 int * sk_X509_REVOKED_new (int ) ;
 int sk_X509_REVOKED_push (int *,int *) ;

int X509_CRL_add0_revoked(X509_CRL *crl, X509_REVOKED *rev)
{
    X509_CRL_INFO *inf;

    inf = &crl->crl;
    if (inf->revoked == ((void*)0))
        inf->revoked = sk_X509_REVOKED_new(X509_REVOKED_cmp);
    if (inf->revoked == ((void*)0) || !sk_X509_REVOKED_push(inf->revoked, rev)) {
        ASN1err(ASN1_F_X509_CRL_ADD0_REVOKED, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    inf->enc.modified = 1;
    return 1;
}
