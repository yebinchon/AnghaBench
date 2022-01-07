
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_EXTENSION ;
typedef int X509 ;
struct TYPE_3__ {unsigned char* certder; int certderlen; unsigned char* preder; int prederlen; } ;
typedef TYPE_1__ SCT_CTX ;


 int NID_ct_precert_poison ;
 int NID_ct_precert_scts ;
 int OPENSSL_free (unsigned char*) ;
 int X509_EXTENSION_free (int *) ;
 int * X509_delete_ext (int *,int) ;
 int * X509_dup (int *) ;
 int X509_free (int *) ;
 int ct_x509_cert_fixup (int *,int *) ;
 int ct_x509_get_ext (int *,int ,int*) ;
 int i2d_X509 (int *,unsigned char**) ;
 int i2d_re_X509_tbs (int *,unsigned char**) ;

int SCT_CTX_set1_cert(SCT_CTX *sctx, X509 *cert, X509 *presigner)
{
    unsigned char *certder = ((void*)0), *preder = ((void*)0);
    X509 *pretmp = ((void*)0);
    int certderlen = 0, prederlen = 0;
    int idx = -1;
    int poison_ext_is_dup, sct_ext_is_dup;
    int poison_idx = ct_x509_get_ext(cert, NID_ct_precert_poison, &poison_ext_is_dup);


    if (poison_ext_is_dup)
        goto err;


    if (poison_idx == -1) {

        if (presigner != ((void*)0))
            goto err;

        certderlen = i2d_X509(cert, &certder);
        if (certderlen < 0)
            goto err;
    }


    idx = ct_x509_get_ext(cert, NID_ct_precert_scts, &sct_ext_is_dup);

    if (sct_ext_is_dup)
        goto err;

    if (idx >= 0 && poison_idx >= 0) {




        goto err;
    }

    if (idx == -1) {
        idx = poison_idx;
    }







    if (idx >= 0) {
        X509_EXTENSION *ext;


        pretmp = X509_dup(cert);
        if (pretmp == ((void*)0))
            goto err;

        ext = X509_delete_ext(pretmp, idx);
        X509_EXTENSION_free(ext);

        if (!ct_x509_cert_fixup(pretmp, presigner))
            goto err;

        prederlen = i2d_re_X509_tbs(pretmp, &preder);
        if (prederlen <= 0)
            goto err;
    }

    X509_free(pretmp);

    OPENSSL_free(sctx->certder);
    sctx->certder = certder;
    sctx->certderlen = certderlen;

    OPENSSL_free(sctx->preder);
    sctx->preder = preder;
    sctx->prederlen = prederlen;

    return 1;
err:
    OPENSSL_free(certder);
    OPENSSL_free(preder);
    X509_free(pretmp);
    return 0;
}
