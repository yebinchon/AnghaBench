
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_REQ ;
typedef int X509_CRL ;
struct TYPE_3__ {int flags; int * subject_req; int * crl; int * subject_cert; int * issuer_cert; } ;
typedef TYPE_1__ X509V3_CTX ;
typedef int X509 ;



void X509V3_set_ctx(X509V3_CTX *ctx, X509 *issuer, X509 *subj, X509_REQ *req,
                    X509_CRL *crl, int flags)
{
    ctx->issuer_cert = issuer;
    ctx->subject_cert = subj;
    ctx->crl = crl;
    ctx->subject_req = req;
    ctx->flags = flags;
}
