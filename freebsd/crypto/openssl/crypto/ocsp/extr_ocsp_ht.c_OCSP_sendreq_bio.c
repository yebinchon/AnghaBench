
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OCSP_RESPONSE ;
typedef int OCSP_REQ_CTX ;
typedef int OCSP_REQUEST ;
typedef int BIO ;


 scalar_t__ BIO_should_retry (int *) ;
 int OCSP_REQ_CTX_free (int *) ;
 int OCSP_sendreq_nbio (int **,int *) ;
 int * OCSP_sendreq_new (int *,char const*,int *,int) ;

OCSP_RESPONSE *OCSP_sendreq_bio(BIO *b, const char *path, OCSP_REQUEST *req)
{
    OCSP_RESPONSE *resp = ((void*)0);
    OCSP_REQ_CTX *ctx;
    int rv;

    ctx = OCSP_sendreq_new(b, path, req, -1);

    if (ctx == ((void*)0))
        return ((void*)0);

    do {
        rv = OCSP_sendreq_nbio(&resp, ctx);
    } while ((rv == -1) && BIO_should_retry(b));

    OCSP_REQ_CTX_free(ctx);

    if (rv)
        return resp;

    return ((void*)0);
}
