
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509_ALGOR ;
struct TYPE_4__ {unsigned char* data; int length; } ;
typedef int DSA_SIG ;
typedef int BIO ;
typedef int BIGNUM ;
typedef TYPE_1__ ASN1_STRING ;
typedef int ASN1_PCTX ;


 int ASN1_bn_print (int *,char*,int const*,int *,int) ;
 scalar_t__ BIO_puts (int *,char*) ;
 int BIO_write (int *,char*,int) ;
 int DSA_SIG_free (int *) ;
 int DSA_SIG_get0 (int *,int const**,int const**) ;
 int X509_signature_dump (int *,TYPE_1__ const*,int) ;
 int * d2i_DSA_SIG (int *,unsigned char const**,int ) ;

__attribute__((used)) static int dsa_sig_print(BIO *bp, const X509_ALGOR *sigalg,
                         const ASN1_STRING *sig, int indent, ASN1_PCTX *pctx)
{
    DSA_SIG *dsa_sig;
    const unsigned char *p;

    if (!sig) {
        if (BIO_puts(bp, "\n") <= 0)
            return 0;
        else
            return 1;
    }
    p = sig->data;
    dsa_sig = d2i_DSA_SIG(((void*)0), &p, sig->length);
    if (dsa_sig) {
        int rv = 0;
        const BIGNUM *r, *s;

        DSA_SIG_get0(dsa_sig, &r, &s);

        if (BIO_write(bp, "\n", 1) != 1)
            goto err;

        if (!ASN1_bn_print(bp, "r:   ", r, ((void*)0), indent))
            goto err;
        if (!ASN1_bn_print(bp, "s:   ", s, ((void*)0), indent))
            goto err;
        rv = 1;
 err:
        DSA_SIG_free(dsa_sig);
        return rv;
    }
    return X509_signature_dump(bp, sig, indent);
}
