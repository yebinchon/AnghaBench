
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int algorithm; } ;
typedef TYPE_1__ X509_ALGOR ;
typedef int RSA_PSS_PARAMS ;
typedef int BIO ;
typedef int ASN1_STRING ;
typedef int ASN1_PCTX ;


 scalar_t__ BIO_puts (int *,char*) ;
 scalar_t__ EVP_PKEY_RSA_PSS ;
 scalar_t__ OBJ_obj2nid (int ) ;
 int RSA_PSS_PARAMS_free (int *) ;
 int X509_signature_dump (int *,int const*,int) ;
 int * rsa_pss_decode (TYPE_1__ const*) ;
 int rsa_pss_param_print (int *,int ,int *,int) ;

__attribute__((used)) static int rsa_sig_print(BIO *bp, const X509_ALGOR *sigalg,
                         const ASN1_STRING *sig, int indent, ASN1_PCTX *pctx)
{
    if (OBJ_obj2nid(sigalg->algorithm) == EVP_PKEY_RSA_PSS) {
        int rv;
        RSA_PSS_PARAMS *pss = rsa_pss_decode(sigalg);

        rv = rsa_pss_param_print(bp, 0, pss, indent);
        RSA_PSS_PARAMS_free(pss);
        if (!rv)
            return 0;
    } else if (!sig && BIO_puts(bp, "\n") <= 0) {
        return 0;
    }
    if (sig)
        return X509_signature_dump(bp, sig, indent);
    return 1;
}
