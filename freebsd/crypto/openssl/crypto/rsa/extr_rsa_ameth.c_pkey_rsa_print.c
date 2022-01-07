
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* rsa; } ;
struct TYPE_11__ {TYPE_1__ pkey; } ;
struct TYPE_10__ {int pss; int prime_infos; int * iqmp; int * dmq1; int * dmp1; int * q; int * p; int * d; int * e; int * n; } ;
struct TYPE_9__ {int * t; int * d; int * r; } ;
typedef TYPE_2__ RSA_PRIME_INFO ;
typedef TYPE_3__ RSA ;
typedef TYPE_4__ EVP_PKEY ;
typedef int BIO ;
typedef int BIGNUM ;


 int ASN1_bn_print (int *,char const*,int *,int *,int) ;
 int BIO_indent (int *,int,int) ;
 scalar_t__ BIO_printf (int *,char*,...) ;
 int BN_num_bits (int *) ;
 scalar_t__ pkey_is_pss (TYPE_4__ const*) ;
 int rsa_pss_param_print (int *,int,int ,int) ;
 int sk_RSA_PRIME_INFO_num (int ) ;
 TYPE_2__* sk_RSA_PRIME_INFO_value (int ,int) ;

__attribute__((used)) static int pkey_rsa_print(BIO *bp, const EVP_PKEY *pkey, int off, int priv)
{
    const RSA *x = pkey->pkey.rsa;
    char *str;
    const char *s;
    int ret = 0, mod_len = 0, ex_primes;

    if (x->n != ((void*)0))
        mod_len = BN_num_bits(x->n);
    ex_primes = sk_RSA_PRIME_INFO_num(x->prime_infos);

    if (!BIO_indent(bp, off, 128))
        goto err;

    if (BIO_printf(bp, "%s ", pkey_is_pss(pkey) ? "RSA-PSS" : "RSA") <= 0)
        goto err;

    if (priv && x->d) {
        if (BIO_printf(bp, "Private-Key: (%d bit, %d primes)\n",
                       mod_len, ex_primes <= 0 ? 2 : ex_primes + 2) <= 0)
            goto err;
        str = "modulus:";
        s = "publicExponent:";
    } else {
        if (BIO_printf(bp, "Public-Key: (%d bit)\n", mod_len) <= 0)
            goto err;
        str = "Modulus:";
        s = "Exponent:";
    }
    if (!ASN1_bn_print(bp, str, x->n, ((void*)0), off))
        goto err;
    if (!ASN1_bn_print(bp, s, x->e, ((void*)0), off))
        goto err;
    if (priv) {
        int i;

        if (!ASN1_bn_print(bp, "privateExponent:", x->d, ((void*)0), off))
            goto err;
        if (!ASN1_bn_print(bp, "prime1:", x->p, ((void*)0), off))
            goto err;
        if (!ASN1_bn_print(bp, "prime2:", x->q, ((void*)0), off))
            goto err;
        if (!ASN1_bn_print(bp, "exponent1:", x->dmp1, ((void*)0), off))
            goto err;
        if (!ASN1_bn_print(bp, "exponent2:", x->dmq1, ((void*)0), off))
            goto err;
        if (!ASN1_bn_print(bp, "coefficient:", x->iqmp, ((void*)0), off))
            goto err;
        for (i = 0; i < sk_RSA_PRIME_INFO_num(x->prime_infos); i++) {

            BIGNUM *bn = ((void*)0);
            RSA_PRIME_INFO *pinfo;
            int j;

            pinfo = sk_RSA_PRIME_INFO_value(x->prime_infos, i);
            for (j = 0; j < 3; j++) {
                if (!BIO_indent(bp, off, 128))
                    goto err;
                switch (j) {
                case 0:
                    if (BIO_printf(bp, "prime%d:", i + 3) <= 0)
                        goto err;
                    bn = pinfo->r;
                    break;
                case 1:
                    if (BIO_printf(bp, "exponent%d:", i + 3) <= 0)
                        goto err;
                    bn = pinfo->d;
                    break;
                case 2:
                    if (BIO_printf(bp, "coefficient%d:", i + 3) <= 0)
                        goto err;
                    bn = pinfo->t;
                    break;
                default:
                    break;
                }
                if (!ASN1_bn_print(bp, "", bn, ((void*)0), off))
                    goto err;
            }
        }
    }
    if (pkey_is_pss(pkey) && !rsa_pss_param_print(bp, 1, x->pss, off))
        goto err;
    ret = 1;
 err:
    return ret;
}
