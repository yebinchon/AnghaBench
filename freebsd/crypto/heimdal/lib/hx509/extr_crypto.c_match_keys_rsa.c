
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_4__* hx509_private_key ;
typedef int hx509_cert ;
struct TYPE_14__ {int length; int data; } ;
struct TYPE_16__ {TYPE_3__ subjectPublicKey; } ;
struct TYPE_13__ {TYPE_5__ subjectPublicKeyInfo; } ;
struct TYPE_18__ {TYPE_2__ tbsCertificate; } ;
struct TYPE_17__ {int publicExponent; int modulus; } ;
struct TYPE_12__ {int * rsa; } ;
struct TYPE_15__ {TYPE_1__ private_key; } ;
typedef TYPE_5__ SubjectPublicKeyInfo ;
typedef TYPE_6__ RSAPublicKey ;
typedef int RSA ;
typedef TYPE_7__ Certificate ;
typedef int BIGNUM ;


 int * BN_dup (int const*) ;
 int BN_free (int *) ;
 int RSA_check_key (int *) ;
 int RSA_free (int *) ;
 int RSA_get0_crt_params (int *,int const**,int const**,int const**) ;
 int RSA_get0_factors (int *,int const**,int const**) ;
 int RSA_get0_key (int *,int *,int *,int const**) ;
 int * RSA_new () ;
 int RSA_set0_crt_params (int *,int *,int *,int *) ;
 int RSA_set0_factors (int *,int *,int *) ;
 int RSA_set0_key (int *,int *,int *,int *) ;
 TYPE_7__* _hx509_get_cert (int ) ;
 int decode_RSAPublicKey (int ,int,TYPE_6__*,size_t*) ;
 int free_RSAPublicKey (TYPE_6__*) ;
 int * heim_int2BN (int *) ;

__attribute__((used)) static int
match_keys_rsa(hx509_cert c, hx509_private_key private_key)
{
    const Certificate *cert;
    const SubjectPublicKeyInfo *spi;
    RSAPublicKey pk;
    RSA *rsa;
    const BIGNUM *d, *p, *q, *dmp1, *dmq1, *iqmp;
    BIGNUM *new_d, *new_p, *new_q, *new_dmp1, *new_dmq1, *new_iqmp, *n, *e;
    size_t size;
    int ret;

    if (private_key->private_key.rsa == ((void*)0))
 return 0;

    rsa = private_key->private_key.rsa;
    RSA_get0_key(rsa, ((void*)0), ((void*)0), &d);
    RSA_get0_factors(rsa, &p, &q);
    RSA_get0_crt_params(rsa, &dmp1, &dmq1, &iqmp);
    if (d == ((void*)0) || p == ((void*)0) || q == ((void*)0))
 return 0;

    cert = _hx509_get_cert(c);
    spi = &cert->tbsCertificate.subjectPublicKeyInfo;

    rsa = RSA_new();
    if (rsa == ((void*)0))
 return 0;

    ret = decode_RSAPublicKey(spi->subjectPublicKey.data,
         spi->subjectPublicKey.length / 8,
         &pk, &size);
    if (ret) {
 RSA_free(rsa);
 return 0;
    }
    n = heim_int2BN(&pk.modulus);
    e = heim_int2BN(&pk.publicExponent);

    free_RSAPublicKey(&pk);

    new_d = BN_dup(d);
    new_p = BN_dup(p);
    new_q = BN_dup(q);
    new_dmp1 = BN_dup(dmp1);
    new_dmq1 = BN_dup(dmq1);
    new_iqmp = BN_dup(iqmp);

    if (n == ((void*)0) || e == ((void*)0) ||
 new_d == ((void*)0) || new_p == ((void*)0)|| new_q == ((void*)0) ||
 new_dmp1 == ((void*)0) || new_dmq1 == ((void*)0) || new_iqmp == ((void*)0)) {
 BN_free(n);
 BN_free(e);
 BN_free(new_d);
 BN_free(new_p);
 BN_free(new_q);
 BN_free(new_dmp1);
 BN_free(new_dmq1);
 BN_free(new_iqmp);
 RSA_free(rsa);
 return 0;
    }

    ret = RSA_set0_key(rsa, new_d, n, e);

    if (ret != 1) {
 BN_free(n);
 BN_free(e);
 BN_free(new_d);
 BN_free(new_p);
 BN_free(new_q);
 BN_free(new_dmp1);
 BN_free(new_dmq1);
 BN_free(new_iqmp);
 RSA_free(rsa);
 return 0;
    }

    ret = RSA_set0_factors(rsa, new_p, new_q);

    if (ret != 1) {
 BN_free(new_p);
 BN_free(new_q);
 BN_free(new_dmp1);
 BN_free(new_dmq1);
 BN_free(new_iqmp);
 RSA_free(rsa);
 return 0;
    }

    ret = RSA_set0_crt_params(rsa, new_dmp1, new_dmq1, new_iqmp);

    if (ret != 1) {
 BN_free(new_dmp1);
 BN_free(new_dmq1);
 BN_free(new_iqmp);
 RSA_free(rsa);
 return 0;
    }

    ret = RSA_check_key(rsa);
    RSA_free(rsa);

    return ret == 1;
}
